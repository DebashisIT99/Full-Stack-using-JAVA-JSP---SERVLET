package ServeletPackage;

public class user_details 
{
	//class_fields for details of user_input
		private String user_id;
		private String password;
		private String acc_type;
		private String first_name;
		private String last_name;
		private String contact_no;
		private String alt_contact_no;
		private String email;
		private String dob;
		private String idproof;
		private String pan_no;
		private String r_address;
		private String nationality;
		private String pcode;
		private String region;
		
		
		public user_details(String user_id,String password,String acc_type,String first_name,String last_name,String contact_no,String alt_contact_no,String email,String dob,String idproof,String pan_no,String r_address,String nationality,String pcode, String region)
		{
			this.user_id=user_id;
			this.password=password;
			this.acc_type=acc_type;
			this.first_name=first_name;
			this.last_name=last_name;
			this.contact_no=contact_no;
			this.alt_contact_no=alt_contact_no;
			this.email=email;
			this.dob=dob;
			this.idproof=idproof;
			this.pan_no=pan_no;
			this.r_address=r_address;
			this.nationality=nationality;
			this.region=region;
			this.pcode=pcode;
		}


		public String getUser_id() {
			return user_id;
		}


		public void setUser_id(String user_id) {
			this.user_id = user_id;
		}


		public String getPassword() {
			return password;
		}


		public void setPassword(String password) {
			this.password = password;
		}


		public String getAcc_type() {
			return acc_type;
		}


		public void setAcc_type(String acc_type) {
			this.acc_type = acc_type;
		}


		public String getFirst_name() {
			return first_name;
		}


		public void setFirst_name(String first_name) {
			this.first_name = first_name;
		}


		public String getLast_name() {
			return last_name;
		}


		public void setLast_name(String last_name) {
			this.last_name = last_name;
		}


		public String getContact_no() {
			return contact_no;
		}


		public void setContact_no(String contact_no) {
			this.contact_no = contact_no;
		}


		public String getAlt_contact_no() {
			return alt_contact_no;
		}


		public void setAlt_contact_no(String alt_contact_no) {
			this.alt_contact_no = alt_contact_no;
		}


		public String getEmail() {
			return email;
		}


		public void setEmail(String email) {
			this.email = email;
		}


		public String getDob() {
			return dob;
		}


		public void setDob(String dob) {
			this.dob = dob;
		}


		public String getIdproof() {
			return idproof;
		}


		public void setIdproof(String idproof) {
			this.idproof = idproof;
		}


		public String getPan_no() {
			return pan_no;
		}


		public void setPan_no(String pan_no) {
			this.pan_no = pan_no;
		}


		public String getR_address() {
			return r_address;
		}


		public void setR_address(String r_address) {
			this.r_address = r_address;
		}


		public String getNationality() {
			return nationality;
		}


		public void setNationality(String nationality) {
			this.nationality = nationality;
		}


		public String getPcode() {
			return pcode;
		}


		public void setPcode(String pcode) {
			this.pcode = pcode;
		}


		public String getRegion() {
			return region;
		}


		public void setRegion(String region) {
			this.region = region;
		}
		
		
				
}
