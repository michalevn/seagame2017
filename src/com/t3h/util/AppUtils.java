package com.t3h.util;

import java.util.ArrayList;
import java.util.List;

import com.t3h.dto.TeamDTO;

public class AppUtils {

	public static String isLogin = "isLogin";
	public static List<TeamDTO> inMemoryTeam;

	public static List<TeamDTO> initData() {
		ArrayList<TeamDTO> datas = new ArrayList<>();
		datas.add(new TeamDTO(1, "Viet Nam", "VNI", "Viet Nam",
				"http://localhost:8080/SeagameAdmin/img/if_Vietnam_flat.png", "active"));
		datas.add(new TeamDTO(2, "Albnaia", "ABL", "Albania ", "http://localhost:8080/SeagameAdmin/img/if_Albania.png",
				"active"));
		datas.add(new TeamDTO(3, "Thai Lan", "THA", "Thai Lan ",
				"http://localhost:8080/SeagameAdmin/img/if_Thailand.png", "active"));

		datas.add(new TeamDTO(4, "ABC", "SS", "BB ", "http://localhost:8080/SeagameAdmin/img/if_Thailand.png",
				"inactive"));
		return datas;

	}

	public static List<TeamDTO> getTeamData() {
		if (inMemoryTeam == null) {
			inMemoryTeam = initData();
		}
		return inMemoryTeam;

	}
	public static void addTeam(TeamDTO team){
		if (inMemoryTeam == null) {
			inMemoryTeam = initData();
		}
		inMemoryTeam.add(team);
	}

	public static boolean checkLogin(String username, String password) {
		if (username.equals("admin") && password.equals("123")) {
			return true;
		}
		return false;
	}
}
