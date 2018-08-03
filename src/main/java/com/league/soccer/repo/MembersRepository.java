package com.league.soccer.repo;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.league.soccer.entity.Member;
import com.league.soccer.entity.Team;

@Repository
public interface MembersRepository extends JpaRepository<Member, Long> {
	<S extends Member> S save(S entity);
	Optional<Member> findByName(String name);
	List<Member> findByTeam(Team team);

}
