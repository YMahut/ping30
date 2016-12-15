package ping30;
import java.util.*;

import DAO.*;
public class Main {

public static void main(String[] args) {
		
	
		Etudiant etu1 = new Etudiant(1,"mon etu","prenom etu", 1, 1431, "plop/plop");
		GroupeEtudiant grp1 = new GroupeEtudiant(1, "grp1");
		Enseignant ens1 = new Enseignant(1, "nomEns", "prenomEns");
		Salle salle1 = new Salle(1, "nomSalle");
		PresenceEtudiant pres1 = new PresenceEtudiant(1, 1, 1, true);
		Cours cours1 = new Cours(1, "crs1", 1, 1);
		
		Ecole ESIGELEC = new Ecole(1, "ESIGELEC", new ArrayList<Etudiant>(),
				new ArrayList<Salle>(),new ArrayList<Enseignant>(),
				new ArrayList<Cours>(),new ArrayList<GroupeEtudiant>(),new ArrayList<PresenceEtudiant>());
		
		System.out.println(ESIGELEC.toStringEnrichi());
		
		
		ESIGELEC.listCours.add(cours1);
		ESIGELEC.listEtudiant.add(etu1);
		ESIGELEC.listSalle.add(salle1);
		ESIGELEC.listEnseignant.add(ens1);
		ESIGELEC.listPresenceEtudiant.add(pres1);
		ESIGELEC.listGroupeEtudiant.add(grp1);
		
		System.out.println(ESIGELEC.toStringEnrichi());
		
		EcoleDAO ecoleDao = new EcoleDAO();
		ecoleDao.create(ESIGELEC);
	
		
		
	}
}
