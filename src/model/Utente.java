package model;



public class Utente {
    public Utente(String nickname,boolean admind, String nome, String cognome, String passwordn, String email, int giorno,int mese,int anno) {
        this.nickname = nickname;
        this.admind = admind;
        this.nome = nome;
        this.cognome = cognome;
        this.passwordn = passwordn;
        this.email = email;
        this.giorno=giorno;
        this.mese=mese;
        this.anno=anno;
    }

    public Utente() {
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCognome() {
        return cognome;
    }

    public void setCognome(String cognome) {
        this.cognome = cognome;
    }

    public String getPasswordn() {
        return passwordn;
    }

    public void setPasswordn(String passwordn) {
        this.passwordn = passwordn;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getGiorno() {
        return giorno;
    }

    public void setGiorno(int giorno) {
        this.giorno = giorno;
    }

    public int getMese() {
        return mese;
    }

    public void setMese(int mese) {
        this.mese = mese;
    }

    public int getAnno() {
        return anno;
    }

    public void setAnno(int anno) {
        this.anno = anno;
    }


    public boolean isAdmind() {
        return admind;
    }

    public void setAdmind(boolean admind) {
        this.admind = admind;
    }

    public String nickname;
    public boolean admind;
    public String nome;
    public String cognome;
    public String passwordn;
    public String email;
    public int giorno;
    public int mese;
    public int anno;
}
