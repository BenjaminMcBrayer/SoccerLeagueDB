package com.league.soccer.entity;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "members")
public class Member {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long memberid;
	private String name;
	private String role;
	private String address;
	private String phone;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "teamid")
	private Team team;

	public Member() {
	}

	public Member(Long memberid, String name, String role, String address, String phone, Team team) {
		this.memberid = memberid;
		this.name = name;
		this.role = role;
		this.address = address;
		this.phone = phone;
		this.team = team;
	}

	public Member(String name, String role, String address, String phone, Team team) {
		this.name = name;
		this.role = role;
		this.address = address;
		this.phone = phone;
		this.team = team;
	}

	public Long getMemberid() {
		return memberid;
	}

	public void setMemberid(Long memberid) {
		this.memberid = memberid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Team getTeam() {
		return team;
	}

	public void setTeam(Team team) {
		this.team = team;
	}

	@Override
	public String toString() {
		return name;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) {
			return true;
		}
		if (!(o instanceof Member)) {
			return false;
		}
		return memberid != null && memberid.equals(((Member) o).memberid);
	}

	@Override
	public int hashCode() {
		return 31;
	}
}
