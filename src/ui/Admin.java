/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package ui;

import ui.QuanLyDichVu;
import ui.QuanLyKhachHang;
import ui.QuanLyNhanVien;
import ui.QuanLyPhong;
import ui.ThongKe;
import utils.Auth;

/**
 *
 * @author ASUS
 */
public class Admin extends javax.swing.JFrame {

    /**
     * Creates new form Admin
     */
    public Admin() {
        initComponents();
        this.setLocationRelativeTo(null);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        btnqlnv = new javax.swing.JButton();
        btntk = new javax.swing.JButton();
        btndv = new javax.swing.JButton();
        btndattra = new javax.swing.JButton();
        btnquanlyphong = new javax.swing.JButton();
        btnDangnhap = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        btnqlnv.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        btnqlnv.setText("Quản Lý Nhân Viên");
        btnqlnv.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnqlnvActionPerformed(evt);
            }
        });

        btntk.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        btntk.setText("Thống Kê");
        btntk.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btntkActionPerformed(evt);
            }
        });

        btndv.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        btndv.setText("Quản Lý Dịch Vụ");
        btndv.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btndvActionPerformed(evt);
            }
        });

        btndattra.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        btndattra.setText("Đặt /Trả Phòng");
        btndattra.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btndattraActionPerformed(evt);
            }
        });

        btnquanlyphong.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        btnquanlyphong.setText("Quản Lý Phòng");
        btnquanlyphong.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnquanlyphongActionPerformed(evt);
            }
        });

        btnDangnhap.setText("Đăng Xuất");
        btnDangnhap.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDangnhapActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(55, 55, 55)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                        .addComponent(btntk, javax.swing.GroupLayout.DEFAULT_SIZE, 201, Short.MAX_VALUE)
                        .addComponent(btnqlnv, javax.swing.GroupLayout.DEFAULT_SIZE, 201, Short.MAX_VALUE)
                        .addComponent(btndv, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(btndattra, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(btnquanlyphong, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addComponent(btnDangnhap))
                .addContainerGap(58, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(34, 34, 34)
                .addComponent(btnqlnv, javax.swing.GroupLayout.PREFERRED_SIZE, 44, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btntk, javax.swing.GroupLayout.PREFERRED_SIZE, 44, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btndv, javax.swing.GroupLayout.PREFERRED_SIZE, 44, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btndattra, javax.swing.GroupLayout.PREFERRED_SIZE, 44, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnquanlyphong, javax.swing.GroupLayout.PREFERRED_SIZE, 44, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnDangnhap, javax.swing.GroupLayout.PREFERRED_SIZE, 24, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(32, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btndattraActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btndattraActionPerformed
    QuanLyKhachHang QLKH = new QuanLyKhachHang();
    QLKH.setVisible(true);
    this.dispose();
    }//GEN-LAST:event_btndattraActionPerformed

    private void btnqlnvActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnqlnvActionPerformed
    QuanLyNhanVien QLNV = new QuanLyNhanVien();
    QLNV.setVisible(true);
    this.dispose();
    }//GEN-LAST:event_btnqlnvActionPerformed

    private void btntkActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btntkActionPerformed
    ThongKe TK = new ThongKe();
    TK.setVisible(true);
    this.dispose();
    }//GEN-LAST:event_btntkActionPerformed

    private void btndvActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btndvActionPerformed
    QuanLyDichVu QLDV = new QuanLyDichVu();
    QLDV.setVisible(true);
    this.dispose();
    }//GEN-LAST:event_btndvActionPerformed

    private void btnquanlyphongActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnquanlyphongActionPerformed
    QuanLyPhong QLP = new QuanLyPhong();
    QLP.setVisible(true);
    this.dispose();
    }//GEN-LAST:event_btnquanlyphongActionPerformed

    private void btnDangnhapActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDangnhapActionPerformed
    // Xóa thông tin người dùng hiện tại
        Auth.clear();

        // Đóng form admin
        this.dispose();

        // Mở lại form đăng nhập
        DangNhap DN = new DangNhap();
        DN.setVisible(true);
    
    }//GEN-LAST:event_btnDangnhapActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Admin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Admin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Admin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Admin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Admin().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnDangnhap;
    private javax.swing.JButton btndattra;
    private javax.swing.JButton btndv;
    private javax.swing.JButton btnqlnv;
    private javax.swing.JButton btnquanlyphong;
    private javax.swing.JButton btntk;
    // End of variables declaration//GEN-END:variables
}
