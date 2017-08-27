package com.t3h.service;

import java.util.ArrayList;
import java.util.List;

import com.t3h.dto.TeamDTO;
import com.t3h.util.AppUtils;

public class DataService {

	public List<TeamDTO> getTeamByStatus(String status) {

		List<TeamDTO> lst = AppUtils.getTeamData();
		for (int i = lst.size() - 1; i >= 0; i--) {
			if ("active".equals(lst.get(i).getTeamStatus()) == false) {
				lst.remove(i);
			}
		}
		return lst;
	}

	public List<TeamDTO> getTeamByConditions(String teamCode, String teamName, String desciption, String status) {

		List<TeamDTO> lst = AppUtils.getTeamData();
		List<TeamDTO> result = new ArrayList<>();
		for (TeamDTO teamDTO : lst) {
			if (teamCode != null && teamCode.isEmpty() == false && teamDTO.getTeamCode().contains(teamCode)) {
				result.add(teamDTO);
			}
			if (teamName != null && teamName.isEmpty() == false && teamDTO.getTeamName().contains(teamName)) {
				result.add(teamDTO);
			}
		}
		return result;
	}

	public void addTeam(TeamDTO team) {
		AppUtils.addTeam(team);
	}
}
