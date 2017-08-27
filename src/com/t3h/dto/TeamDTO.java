package com.t3h.dto;

public class TeamDTO {

	private Integer teamId;
	private String teamName;
	private String teamCode;
	private String teamDescription;
	private String imageUrl;
	private String teamStatus;

	public void setTeamStatus(String teamStatus) {
		this.teamStatus = teamStatus;
	}

	public String getTeamStatus() {
		return teamStatus;
	}

	public Integer getTeamId() {
		return teamId;
	}

	public void setTeamId(Integer teamId) {
		this.teamId = teamId;
	}

	public String getTeamName() {
		return teamName;
	}

	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}

	public String getTeamCode() {
		return teamCode;
	}

	public void setTeamCode(String teamCode) {
		this.teamCode = teamCode;
	}

	public String getTeamDescription() {
		return teamDescription;
	}

	public void setTeamDescription(String teamDescription) {
		this.teamDescription = teamDescription;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public TeamDTO(Integer teamId, String teamName, String teamCode, String teamDescription, String imageUrl,
			String teamStatus) {
		super();
		this.teamId = teamId;
		this.teamName = teamName;
		this.teamCode = teamCode;
		this.teamDescription = teamDescription;
		this.imageUrl = imageUrl;
		this.teamStatus = teamStatus;
	}

}
