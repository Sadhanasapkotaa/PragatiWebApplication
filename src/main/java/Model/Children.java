package Model;

public class Children {

//    This class has private variables and the name of the private variables is the same as that of database table columns
    private int id;
    private String firstname;
    private String lastname;
    private String email;
    private String dob;
    private String password;
    private boolean checkbox;


//  The private variables ends here



//  The parameterized constructor begins here
    public Children(int id, String firstname, String lastname, String email, String dob, String password, boolean checkbox) {
        this.id = id;
        this.firstname = firstname;
        this.lastname = lastname;
        this.email = email;
        this.dob = dob;
        this.password = password;
        this.checkbox = checkbox;
    }
    //  The parameterized constructor ends here

    //  The non-parameterized constructor begins here
    public Children() {

    }

//  The non-parameterized constructor ends here




//  These are the getter and setter
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isCheckbox() {
        return checkbox;
    }

    public void setCheckbox(String checkbox) {
        this.checkbox = Boolean.parseBoolean(checkbox);
    }

}
