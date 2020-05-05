package model;

public class Merce {

    public Merce(){

    }

    public Merce(String nome,double prezzo,int quantita,String descrizione,String categoria,String tipomerce,String tipo){
        this.nome = nome;
        this.prezzo = prezzo;
        this.quantita = quantita;
        this.descrizione = descrizione;
        this.categoria = categoria;
        this.tipomerce = tipomerce;
        if(!(tipomerce.equals("Arma"))) {
            this.tipoequipaggiamento = tipo;
        }else
            this.tipomunizioni=tipo;
    }


    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public double getPrezzo() {
        return prezzo;
    }

    public void setPrezzo(double prezzo) {
        this.prezzo = prezzo;
    }

    public int getQuantita() {
        return quantita;
    }

    public void setQuantita(int quantita) {
        this.quantita = quantita;
    }

    public String getDescrizione() {
        return descrizione;
    }

    public void setDescrizione(String descrizione) {
        this.descrizione = descrizione;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getTipomerce() {
        return tipomerce;
    }

    public void setTipomerce(String tipomerce) {
        this.tipomerce = tipomerce;
    }

    public String getTipoequipaggiamento() {
        return tipoequipaggiamento;
    }

    public void setTipoequipaggiamento(String tipoequipaggiamento) {
        this.tipoequipaggiamento = tipoequipaggiamento;
    }

    public String getTipomunizioni() {
        return tipomunizioni;
    }

    public void setTipomunizioni(String tipomunizioni) {
        this.tipomunizioni = tipomunizioni;
    }

    public String nome;
    public double prezzo;
    public int quantita;
    public String descrizione;
    public String categoria;
    public String tipomerce;
    public String tipoequipaggiamento;
    public String tipomunizioni;
}
