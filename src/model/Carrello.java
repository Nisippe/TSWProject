package model;

import java.util.*;

public class Carrello {
    public static class ProdottoQuantita{
        private Merce merce;
        private int quantita;

        private ProdottoQuantita(Merce merce,int quantita){
            this.merce=merce;
            this.quantita=quantita;




        }



        public Merce getMerce() {
            return merce;
        }

        public void setMerce(Merce merce) {
            this.merce = merce;
        }

        public int getQuantita() {
            return quantita;
        }

        public void setQuantita(int quantita) {
            this.quantita = quantita;
        }

        public long getPrezzoTotEuro(){
            return (long) (quantita*merce.getPrezzo());
        }

    }

    private LinkedHashMap<String,ProdottoQuantita> prodotti=new LinkedHashMap<>();

    public Collection<ProdottoQuantita> getProdotti(){
        return prodotti.values();
    }

    public ProdottoQuantita get(String nome){
        return prodotti.get(nome);
    }

    public Set<String> getAll() {return ((Set<String>) prodotti.keySet());}

    public void put(Merce merce){
        prodotti.put(merce.getNome(),new ProdottoQuantita(merce,1));
    }

    public ProdottoQuantita remove(String nome){
        return prodotti.remove(nome);
    }

    public long getPrezzoTotEuro(){
        return prodotti.values().stream().mapToLong(p->p.getPrezzoTotEuro()).sum();
    }

 	}
