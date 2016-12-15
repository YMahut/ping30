package maquette;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.BoxLayout;

import java.awt.GridLayout;

import javax.swing.JLabel;
import javax.swing.JComboBox;

import java.awt.GridBagLayout;

import javax.swing.JTextField;

import java.awt.GridBagConstraints;

import javax.swing.JCheckBox;

import java.awt.Insets;
import java.awt.event.ActionListener;

import javax.swing.JTable;
import javax.swing.JButton;

import org.jdatepicker.DateModel;
import org.jdatepicker.JDatePicker;
import java.awt.Font;
import javax.swing.JTextPane;

public class ssssssssss extends JFrame {

	private JPanel contentPane;
	private JTable table;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					ssssssssss frame = new ssssssssss();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public ssssssssss() {
		setTitle("Liste d'etudiants");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 861, 623);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		table = new JTable();
		table.setBounds(298, 11, 535, 559);
		contentPane.add(table);
		
		JLabel lblNomPrenom = new JLabel("Nom Prenom");
		lblNomPrenom.setBounds(12, 27, 161, 40);
		contentPane.add(lblNomPrenom);
	}
}
