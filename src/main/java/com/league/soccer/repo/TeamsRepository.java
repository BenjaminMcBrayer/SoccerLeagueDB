package com.league.soccer.repo;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.league.soccer.entity.Team;

public interface TeamsRepository extends JpaRepository<Team, Long> {

	Optional<Team> findByTeamname(String teamname);
}
