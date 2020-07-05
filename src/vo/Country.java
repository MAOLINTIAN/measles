
package vo;

public class Country {
	public int id;
	public String year;
	public float GDP;
	public float MHI;
	public float DCP;
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @return the year
	 */
	public String getYear() {
		return year;
	}
	/**
	 * @return the gDP
	 */
	public float getGDP() {
		return GDP;
	}
	/**
	 * @return the mHI
	 */
	public float getMHI() {
		return MHI;
	}
	/**
	 * @return the dCP
	 */
	public float getDCP() {
		return DCP;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @param year the year to set
	 */
	public void setYear(String year) {
		this.year = year;
	}
	/**
	 * @param gDP the gDP to set
	 */
	public void setGDP(float gDP) {
		GDP = gDP;
	}
	/**
	 * @param mHI the mHI to set
	 */
	public void setMHI(float mHI) {
		MHI = mHI;
	}
	/**
	 * @param dCP the dCP to set
	 */
	public void setDCP(float dCP) {
		DCP = dCP;
	}

}
