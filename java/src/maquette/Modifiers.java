package maquette;

import java.awt.BorderLayout;
import java.awt.Component;
import java.awt.Dimension;
import java.awt.EventQueue;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.InputEvent;
import java.awt.event.KeyEvent;

import javax.swing.JButton;
import javax.swing.JCheckBoxMenuItem;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JPanel;
import javax.swing.KeyStroke;
import javax.swing.border.EmptyBorder;
import javax.swing.JTabbedPane;

public class Modifiers extends JFrame implements ActionListener{

	private JPanel contentPane;

	/**
	 * Launch the application.
	 */
	
		private JTabbedPane pane = new JTabbedPane();
	   	private JMenuItem scrollTabItem ;
	    private JMenuItem componentTabItem;
	    private final int numTab = 5;
	    
	    public Modifiers(String title) {
		        //modifier nom de table
	        super(title);
	        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	        initMenu();
	        add(pane);
	   	     }
	    public  void runTest() {
	        componentTabItem.setSelected(true);
	        //set table
	      
	        pane.add("Cours", createCours());
	        pane.add("Salle", createSalles());
	        pane.add("Enseignant", createEnseignant());
	        pane.add("Etudiant", createEtudiant());
	        pane.add("Liste", createListe());
	        // initTabComponent(0);   ajouter place pour close
	        setSize(new Dimension(500,500));
	        setLocationRelativeTo(null);
	        setVisible(true);
	     }
	    
	     //creation du component
	     private Component createContent(String name) {
	      
	        JPanel panel = new JPanel(new GridLayout(1,1));
	        JLabel label = new JLabel(name);
	        label.setHorizontalAlignment(JLabel.CENTER);
	        panel.add(label);
	        return panel;
	     }  
	     private Component createCours() {
		       
		        JPanel panel = new JPanel(new GridLayout(4,1));
		        JLabel label = new JLabel("Cours");
		        JButton ajoutCour = new JButton("Ajouter Cours");
		        JButton supCour = new JButton("Supperimer Cours");
		        JButton modCour = new JButton("Modier Cours");
		        ajoutCour.addActionListener(this);
		        supCour.addActionListener(this);
		        modCour.addActionListener(this);
		        label.setHorizontalAlignment(JLabel.CENTER);
		        panel.add(label);
		        panel.add(ajoutCour);
		        panel.add(supCour);
		        panel.add(modCour);
		        return panel;
		     }
	     private Component createListe() {
		       
		        JPanel panel = new JPanel(new GridLayout(4,1));
		        JLabel label = new JLabel("Listes");
		        JButton ajoutList = new JButton("Ajouter liste d'absence");
		        JButton supList = new JButton("Supperimer liste d'absence");
		        JButton modList = new JButton("Modier liste d'absence");
		      ajoutList.addActionListener(this);
		      supList.addActionListener(this);
		      modList.addActionListener(this);
		        label.setHorizontalAlignment(JLabel.CENTER);
		        panel.add(label);
		        panel.add(ajoutList);
		        panel.add(supList);
		        panel.add(modList);
		        return panel;
		     }
	     private Component createSalles() {
		      
		        JPanel panel = new JPanel(new GridLayout(4,1));
		        JLabel label = new JLabel("Salles");
		        JButton ajoutSa = new JButton("Ajouter Salles");
		        JButton supSa = new JButton("Supperimer Salles");
		        JButton modSa = new JButton("Modier Salles");
		      ajoutSa.addActionListener(this);
		      supSa.addActionListener(this);
		      modSa.addActionListener(this);
		        label.setHorizontalAlignment(JLabel.CENTER);
		        panel.add(label);
		        panel.add(ajoutSa);
		        panel.add(supSa);
		        panel.add(modSa);
		        return panel;
		     }
	     private Component createEnseignant() {
		    
		        JPanel panel = new JPanel(new GridLayout(4,1));
		        JLabel label = new JLabel("Enseignant");
		        JButton ajoutE = new JButton("Ajouter Enseignant");
		        JButton supE = new JButton("Supperimer Enseignant");
		        JButton modE = new JButton("Modier Enseignant");
		        ajoutE.addActionListener(this);
		        supE.addActionListener(this);
		        modE.addActionListener(this);
		        label.setHorizontalAlignment(JLabel.CENTER);
		        panel.add(label);
		        panel.add(ajoutE);
		        panel.add(supE);
		        panel.add(modE);
		        return panel;
		     }
	     private Component createEtudiant() {
			    
		        JPanel panel = new JPanel(new GridLayout(4,1));
		        JLabel label = new JLabel("Etudiant");
		        JButton ajoutEt = new JButton("Ajouter Etudiant");
		        JButton supEt = new JButton("Supperimer Etudiant");
		        JButton modEt = new JButton("Modier Etudiant");
		        ajoutEt.addActionListener(this);
		        supEt.addActionListener(this);
		        modEt.addActionListener(this);
		        label.setHorizontalAlignment(JLabel.CENTER);
		        panel.add(label);
		        panel.add(ajoutEt);
		        panel.add(supEt);
		        panel.add(modEt);
		        return panel;
		     }
	
	     private void initTabComponent(int i) {
	        pane.setTabComponentAt(i, new ButtonTabComponent(pane));
	        }
	    
	     //creation du menu
	     private void initMenu() {
	        JMenuBar mb = new JMenuBar();
	         scrollTabItem = new JCheckBoxMenuItem("tab");
	         scrollTabItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_S,InputEvent.CTRL_MASK));
	         scrollTabItem.addActionListener(new ActionListener() {
	            @Override
	            public void actionPerformed(ActionEvent arg0) {
	               if(pane.getTabLayoutPolicy() == JTabbedPane.SCROLL_TAB_LAYOUT)
	                   pane.setTabLayoutPolicy(JTabbedPane.WRAP_TAB_LAYOUT);
	               else
	                   pane.setTabLayoutPolicy(JTabbedPane.SCROLL_TAB_LAYOUT);
	            }
	        });
	        componentTabItem = new JCheckBoxMenuItem("set table can be closed");
	        componentTabItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_C,InputEvent.CTRL_MASK));
	        componentTabItem.addActionListener(new ActionListener() {
	            @Override
	            public void actionPerformed(ActionEvent e) {
	               for(int i = 0 ; i < numTab ; i++)
	               {
	                   if(componentTabItem.isSelected())
	                      initTabComponent(i);
	                   else
	                      pane.setTabComponentAt(i, null);
	               }
	            }
	        });
	       
	        JMenuItem reSetItem = new JMenuItem("Reset");
	        reSetItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_R,InputEvent.CTRL_MASK));
	        reSetItem.addActionListener(new ActionListener() {
	            @Override
	            public void actionPerformed(ActionEvent e) {
	               runTest();
	            }
	        });

	        JMenu menu = new JMenu("items");
	        menu.add(componentTabItem);
	        menu.add(scrollTabItem);
	     
	        mb.add(menu);
	        setJMenuBar(mb);
	       
	     }
	
	    
	    
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Modifiers frame = new Modifiers("Modifier");
					frame.setVisible(true);
					frame.runTest();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public Modifiers() {
	
	}
	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		switch (e.getActionCommand()) {
		case "Ajouter Cours":
			System.out.println("sdsadadsa");
			break;
		case "Supperimer Cours":
			System.out.println("superimer cours");
		case "Modier Cours":
			System.out.println("1");

			break;
		case "Ajouter liste d'absence":
			System.out.println("2");

			break;
		case "Supperimer liste d'absence":
			System.out.println("3");

			break;
		case "Modier liste d'absence":
			System.out.println("4");

			break;
		case "Ajouter Salles":
			System.out.println("5");

			break;
		case "Supperimer Salles":
			System.out.println("6");

			break;
		case "Modier Salles":
			System.out.println("7");

			break;
		case "Ajouter Enseignant":
			System.out.println("8");

			break;
		case "Supperimer Enseignant":
			System.out.println("9");

			break;
		case "Modier Enseignant":
			System.out.println("10");

			break;
		case "Ajouter Etudiant":
			System.out.println("11");

			break;
		case "Supperimer Etudiant":
			System.out.println("12");

			break;
		case "Modier Etudiant":
			System.out.println("13");

			break;
		
		default:
			System.out.println("error de reeor");
			break;
		}
	}
}
