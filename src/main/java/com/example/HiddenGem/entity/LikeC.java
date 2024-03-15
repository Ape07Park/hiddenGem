package com.example.HiddenGem.entity;

public class LikeC {
	private int lid;
	private int value;
	private String uid;
	
	// BoardF와 연결
	private int cid;

	public LikeC(int lid, int value, String uid, int cid) {
		super();
		this.lid = lid;
		this.value = value;
		this.uid = uid;
		this.cid = cid;
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

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	@Override
	public String toString() {
		return "LikeC [lid=" + lid + ", value=" + value + ", uid=" + uid + ", cid=" + cid + "]";
	}
	
	
}
