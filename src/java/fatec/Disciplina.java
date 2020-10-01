package fatec;

import java.util.ArrayList;

public class Disciplina {
    ArrayList<ArrayList<String>> disciplina = new ArrayList<>();
    
    public Disciplina(){
    
    }
    
    public Disciplina(String nome, String ementa, String ciclo){
        ArrayList<String> materia = new ArrayList<>();
        
        materia.add(nome);
        materia.add(ementa);
        materia.add(ciclo);
        materia.add("Sem nota");
        
        this.disciplina.add(materia);
    }
    
    public void addDisciplina(String nome, String ementa, String ciclo){
        ArrayList<String> materia = new ArrayList<>();
        
        materia.add(nome);
        materia.add(ementa);
        materia.add(ciclo);
        materia.add("Sem nota");
        
        this.disciplina.add(materia);
    }
    
    public ArrayList<ArrayList<String>> getList(){
        return this.disciplina;
    }
    
    public String getNome(int id){
        return this.disciplina.get(id).get(0);
    }
    
    public String getEmenta(int id){
        return this.disciplina.get(id).get(1);
    }
    
    public String getCiclo(int id){
        return this.disciplina.get(id).get(2);
    }
    
    public String getNota(int id){
        return this.disciplina.get(id).get(3);
    }
    
    public void setNota(int id, String nota){
        this.disciplina.get(id).set(3, nota);
    }
    
}
