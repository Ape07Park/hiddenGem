package com.example.HiddenGem.entity;

public class LikeF {
	private int lid;
	private int value;
	private String uid;
	
	// BoardF와 연결
	private int fid;

	public LikeF(int lid, int value, String uid, int fid) {
		this.lid = lid;
		this.value = value;
		this.uid = uid;
		this.fid = fid;
	}

	public int getLid() {
		return lid;
	}

	public void setLid(int lid) {
		this.lid = lid;
	}

	public int getValue() {
		return value;
	}

	public void setValue(int value) {
		this.value = value;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public int getFid() {
		return fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}

	@Override
	public String toString() {
		return "LikeF [lid=" + lid + ", value=" + value + ", uid=" + uid + ", fid=" + fid + "]";
	}
	
	
}
