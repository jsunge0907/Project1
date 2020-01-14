package View;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.SpringLayout;
import javax.swing.JLabel;
import javax.swing.ImageIcon;
import java.awt.BorderLayout;
import javax.swing.SwingConstants;
import javax.swing.JButton;
import java.awt.GridLayout;
import javax.swing.JTextField;
import javax.swing.BoxLayout;
import java.awt.Font;
import javax.swing.JRadioButton;

public class 회원가입라이더2 {

	private JFrame frame;
	private final JLabel lblNewLabel = new JLabel("");
	private final JLabel label = new JLabel("\uB77C\uC774\uB354\uC6A9 \uD68C\uC6D0\uAC00\uC785");
	private final JPanel panel_1 = new JPanel();
	private final JPanel panel_2 = new JPanel();
	private final JLabel lblNewLabel_1 = new JLabel("\uC774\uB984");
	private JTextField textField;
	private final JButton btnNewButton_1 = new JButton("\uD68C\uC6D0\uAC00\uC785 \uC2E0\uCCAD");
	private final JLabel lblNewLabel_2 = new JLabel("ID");
	private final JTextField textField_1 = new JTextField();
	private final JPanel panel_3 = new JPanel();
	private final JLabel lblPw = new JLabel("PW");
	private final JTextField textField_2 = new JTextField();
	private final JPanel panel_4 = new JPanel();
	private final JLabel label_2 = new JLabel("\uD734\uB300\uD3F0\uBC88\uD638");
	private final JTextField textField_3 = new JTextField();
	private final JPanel panel_5 = new JPanel();
	private final JLabel label_3 = new JLabel("\uBC30\uB2EC \uC9C0\uC5ED");
	private final JTextField textField_4 = new JTextField();
	private final JPanel panel_6 = new JPanel();
	private final JLabel label_4 = new JLabel("\uC6B4\uD589\uC218\uB2E8");
	private final JPanel panel_7 = new JPanel();
	private final JLabel label_1 = new JLabel("\uC18C\uC18D  \uBC30\uB2EC\uC5C5\uCCB4");
	private JTextField textField_5;

	
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					회원가입라이더2 window = new 회원가입라이더2();
					window.frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public 회원가입라이더2() {
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		textField_1.setHorizontalAlignment(SwingConstants.CENTER);
		textField_1.setColumns(10);
		frame = new JFrame();
		frame.setResizable(false);
		frame.setBounds(600, 200, 382, 600);
		String imgPath = this.getClass().getResource(".").getPath()+"..//..//img//aa.png";
		System.out.println(imgPath);
		frame.getContentPane().setLayout(null);
		
		JPanel panel = new JPanel();
		panel.setBounds(96, 25, 177, 41);
		frame.getContentPane().add(panel);
		panel.setLayout(new BorderLayout(0, 0));
		label.setHorizontalAlignment(SwingConstants.CENTER);
		
		panel.add(label, BorderLayout.CENTER);
		panel_1.setBounds(30, 76, 296, 53);
		
		frame.getContentPane().add(panel_1);
		panel_1.setLayout(new GridLayout(1, 0, 0, 0));
		lblNewLabel_1.setHorizontalAlignment(SwingConstants.CENTER);
		
		panel_1.add(lblNewLabel_1);
		
		textField = new JTextField();
		textField.setHorizontalAlignment(SwingConstants.CENTER);
		panel_1.add(textField);
		textField.setColumns(10);
		panel_2.setBounds(30, 139, 296, 53);
		
		frame.getContentPane().add(panel_2);
		panel_2.setLayout(new GridLayout(1, 0, 0, 0));
		lblNewLabel_2.setHorizontalAlignment(SwingConstants.CENTER);
		
		panel_2.add(lblNewLabel_2);
		
		panel_2.add(textField_1);
		btnNewButton_1.setBounds(106, 520, 141, 41);
		
		frame.getContentPane().add(btnNewButton_1);
		panel_3.setBounds(30, 202, 296, 53);
		
		frame.getContentPane().add(panel_3);
		panel_3.setLayout(new GridLayout(1, 0, 0, 0));
		lblPw.setHorizontalAlignment(SwingConstants.CENTER);
		
		panel_3.add(lblPw);
		textField_2.setHorizontalAlignment(SwingConstants.CENTER);
		textField_2.setColumns(10);
		
		panel_3.add(textField_2);
		panel_4.setBounds(30, 265, 296, 53);
		
		frame.getContentPane().add(panel_4);
		panel_4.setLayout(new GridLayout(1, 0, 0, 0));
		label_2.setHorizontalAlignment(SwingConstants.CENTER);
		
		panel_4.add(label_2);
		textField_3.setHorizontalAlignment(SwingConstants.CENTER);
		textField_3.setColumns(10);
		
		panel_4.add(textField_3);
		panel_5.setBounds(30, 328, 296, 53);
		
		frame.getContentPane().add(panel_5);
		panel_5.setLayout(new GridLayout(1, 0, 0, 0));
		label_3.setHorizontalAlignment(SwingConstants.CENTER);
		
		panel_5.add(label_3);
		textField_4.setHorizontalAlignment(SwingConstants.CENTER);
		textField_4.setColumns(10);
		
		panel_5.add(textField_4);
		panel_6.setBounds(30, 391, 296, 53);
		
		frame.getContentPane().add(panel_6);
		panel_6.setLayout(null);
		label_4.setBounds(0, 0, 148, 53);
		label_4.setHorizontalAlignment(SwingConstants.CENTER);
		
		panel_6.add(label_4);
		
		JRadioButton rdbtnNewRadioButton = new JRadioButton("\uB3C4\uBCF4");
		rdbtnNewRadioButton.setBounds(147, 0, 149, 16);
		panel_6.add(rdbtnNewRadioButton);
		
		JRadioButton radioButton = new JRadioButton("\uC624\uD1A0\uBC14\uC774");
		radioButton.setBounds(147, 18, 149, 16);
		panel_6.add(radioButton);
		
		JRadioButton radioButton_1 = new JRadioButton("\uBC84\uC2A4, \uC790\uAC00\uC6A9");
		radioButton_1.setBounds(147, 37, 149, 16);
		panel_6.add(radioButton_1);
		panel_7.setBounds(30, 454, 296, 53);
		
		frame.getContentPane().add(panel_7);
		panel_7.setLayout(new GridLayout(1, 0, 0, 0));
		label_1.setHorizontalAlignment(SwingConstants.CENTER);
		
		panel_7.add(label_1);
		
		textField_5 = new JTextField();
		panel_7.add(textField_5);
		textField_5.setColumns(10);
		lblNewLabel.setBounds(0, 10, 594, 584);
		lblNewLabel.setIcon(new ImageIcon(imgPath));
		frame.getContentPane().add(lblNewLabel);
	}
}













