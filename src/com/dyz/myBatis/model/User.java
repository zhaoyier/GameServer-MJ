package com.dyz.myBatis.model;

public class User {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user.f_id
     *
     * @mbggenerated
     */
    private Integer fId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user.f_name
     *
     * @mbggenerated
     */
    private String fName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user.f_phonenumber
     *
     * @mbggenerated
     */
    private String fPhonenumber;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user.f_email
     *
     * @mbggenerated
     */
    private String fEmail;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user.f_passwd
     *
     * @mbggenerated
     */
    private String fPasswd;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user.f_regdate
     *
     * @mbggenerated
     */
    private Long fRegdate;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user.f_id
     *
     * @return the value of user.f_id
     *
     * @mbggenerated
     */
    public Integer getfId() {
        return fId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user.f_id
     *
     * @param fId the value for user.f_id
     *
     * @mbggenerated
     */
    public void setfId(Integer fId) {
        this.fId = fId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user.f_name
     *
     * @return the value of user.f_name
     *
     * @mbggenerated
     */
    public String getfName() {
        return fName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user.f_name
     *
     * @param fName the value for user.f_name
     *
     * @mbggenerated
     */
    public void setfName(String fName) {
        this.fName = fName == null ? null : fName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user.f_phonenumber
     *
     * @return the value of user.f_phonenumber
     *
     * @mbggenerated
     */
    public String getfPhonenumber() {
        return fPhonenumber;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user.f_phonenumber
     *
     * @param fPhonenumber the value for user.f_phonenumber
     *
     * @mbggenerated
     */
    public void setfPhonenumber(String fPhonenumber) {
        this.fPhonenumber = fPhonenumber == null ? null : fPhonenumber.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user.f_email
     *
     * @return the value of user.f_email
     *
     * @mbggenerated
     */
    public String getfEmail() {
        return fEmail;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user.f_email
     *
     * @param fEmail the value for user.f_email
     *
     * @mbggenerated
     */
    public void setfEmail(String fEmail) {
        this.fEmail = fEmail == null ? null : fEmail.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user.f_passwd
     *
     * @return the value of user.f_passwd
     *
     * @mbggenerated
     */
    public String getfPasswd() {
        return fPasswd;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user.f_passwd
     *
     * @param fPasswd the value for user.f_passwd
     *
     * @mbggenerated
     */
    public void setfPasswd(String fPasswd) {
        this.fPasswd = fPasswd == null ? null : fPasswd.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user.f_regdate
     *
     * @return the value of user.f_regdate
     *
     * @mbggenerated
     */
    public Long getfRegdate() {
        return fRegdate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user.f_regdate
     *
     * @param fRegdate the value for user.f_regdate
     *
     * @mbggenerated
     */
    public void setfRegdate(Long fRegdate) {
        this.fRegdate = fRegdate;
    }
}