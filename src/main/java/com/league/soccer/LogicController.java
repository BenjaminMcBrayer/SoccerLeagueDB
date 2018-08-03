package com.league.soccer;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.league.soccer.entity.Member;
import com.league.soccer.entity.Team;
import com.league.soccer.repo.MembersRepository;
import com.league.soccer.repo.TeamsRepository;

@Controller
public class LogicController {

	@Autowired
	MembersRepository mP;

	@Autowired
	TeamsRepository tP;

	@RequestMapping("/memberadmin")
	public ModelAndView memberAdmin() {
		return new ModelAndView("memberadmin", "members", mP.findAll());
	}

	@RequestMapping("/teamadmin")
	public ModelAndView teamAdmin() {
		return new ModelAndView("teamadmin", "teams", tP.findAll());
	}

	@RequestMapping(value = { "/deletemember" })
	public ModelAndView deleteMember(@RequestParam("memberid") Long memberid) {
		mP.deleteById(memberid);
		return new ModelAndView("redirect:/memberadmin");
	}

	@RequestMapping(value = { "/deleteteam" })
	public ModelAndView deleteTeam(@RequestParam("teamid") Long teamid) {
		tP.deleteById(teamid);
		return new ModelAndView("redirect:/teamadmin");
	}

	@RequestMapping("editmember")
	public ModelAndView editMember(@RequestParam("memberid") Long memberid) {
		Optional<Member> optionalMember = mP.findById(memberid);
		Member member = optionalMember.get();
		return new ModelAndView("memberedit", "member", member);
	}

	@RequestMapping("memberedit")
	public ModelAndView updateMember(@RequestParam("memberid") Long memberid, @RequestParam("name") String name,
			@RequestParam("role") String role, @RequestParam("address") String address,
			@RequestParam("phone") String phone, @RequestParam("teamid") Long teamid) {
		Optional<Team> optionalTeam = tP.findById(teamid);
		Team team = optionalTeam.get();
		Member member = new Member(memberid, name, role, address, phone, team);
		mP.save(member);
		return new ModelAndView("redirect:/memberadmin");
	}

	@RequestMapping(value = "/editteam")
	public ModelAndView editTeam(@RequestParam("teamid") Long teamid) {
		Optional<Team> optionalTeam = tP.findById(teamid);
		Team team = optionalTeam.get();
		return new ModelAndView("teamedit", "team", team);
	}

	@RequestMapping(value = "/teamedit")
	public ModelAndView updateTeam(@RequestParam("teamid") Long teamid, @RequestParam("teamname") String teamname,
			@RequestParam("members") List<Member> members) {
		Team team = new Team(teamid, teamname, members);
		tP.save(team);
		return new ModelAndView("redirect:/teamadmin");
	}

	@RequestMapping(value = "/viewteam")
	public ModelAndView viewTeam(@RequestParam("teamid") Long teamid) {
		Optional<Team> optionalTeam = tP.findById(teamid);
		Team team = optionalTeam.get();
		return new ModelAndView("teamview", "team", team);
	}

	@RequestMapping(value = "/teamview")
	public ModelAndView teamView(@RequestParam("teamid") Long teamid, Model model) {
		Optional<Team> optionalTeam = tP.findById(teamid);
		Team team = optionalTeam.get();
		List<Member> members = mP.findByTeam(team);
		model.addAttribute("members", members);
		return new ModelAndView("teamview", "team", team);
	}
	
	@RequestMapping("/addnewmember")
	public String addNewMember() {
		return "addnewmember";
	}

	@RequestMapping("/addmember")
	public ModelAndView addMember(@RequestParam("name") String name, @RequestParam("role") String role,
			@RequestParam("address") String address, @RequestParam("phone") String phone,
			@RequestParam("teamid") Long teamid) {
		Optional<Team> optionalTeam = tP.findById(teamid);
		Team team = optionalTeam.get();
		Member member = new Member(name, role, address, phone, team);
		mP.save(member);
		return new ModelAndView("redirect:/memberadmin");
	}

	@RequestMapping("/addnewteam")
	public String addNewTeam() {
		return "addnewteam";
	}

	@RequestMapping("/addteam")
	public ModelAndView addTeam(@RequestParam("teamname") String teamname) {
		Team team = new Team(teamname);
		tP.save(team);
		return new ModelAndView("redirect:/teamadmin");
	}
}
