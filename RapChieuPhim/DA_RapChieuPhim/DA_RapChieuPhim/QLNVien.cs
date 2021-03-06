﻿using RapChieuPhimBUS;
using RapChieuPhimDTO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DA_RapChieuPhim
{
    public partial class QLNV : Form
    {
        LuongBUS nv = new LuongBUS();
        List<LuongBUS> LuongNV = new List<LuongBUS>();
        LoaiNV_BUS Loai = new LoaiNV_BUS();
        NhanVienBUS nv_bus = new NhanVienBUS();
        NhanVienDTO nvchon = null;
        string pathHA = "D:/RapChieuPhim/DA_RapChieuPhim/DA_RapChieuPhim/bin/Debug/Dữ Liệu/";
        public QLNV()
        {
            InitializeComponent();
        }

        private void QLNV_Load(object sender, EventArgs e)
        {
            loadNV();
            loadLuong();
        }

        public void loadNV()
        {
            gcNhanVien.DataSource = nv_bus.LoadDSNVien();
        }
       

        private void loadLuong()
        {

            lUpLuong.Properties.DataSource =nv.LuongNV();
            lUpLuong.Properties.DisplayMember = "LuongCB";
            lUpLuong.Properties.ValueMember = "MaLuong";

            lUpChucVu.Properties.DataSource = Loai.LayLoaiNV();
            lUpChucVu.Properties.DisplayMember = "TenLoai";
            lUpChucVu.Properties.ValueMember = "MaLoaiNV";


            LpChucVu.DataSource = Loai.LayLoaiNV();
            LpLuong.DataSource = nv.LuongNV();
          
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            OpenFileDialog ofp = new OpenFileDialog();
            ofp.Multiselect = false;
            ofp.Filter = "Pictures | *.png;*jpg";
            DialogResult dr= ofp.ShowDialog();
            if(dr == DialogResult.Cancel)
            {
                pictureBox1.Image = null;
            }
            else
            {
                byte[] HA = File.ReadAllBytes(ofp.FileName);
                MemoryStream ms = new MemoryStream(HA);
                pictureBox1.Image = Image.FromStream(ms);
            }
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            getDataDetail();
            string hten = txtTenNV.Text;
            DateTime NSinh = DateTime.Parse(dtNS.Text);
            string DChi = txtDC.Text;
            int GTinh = int.Parse(txtGT.Text);
            string Email = txtEmail.Text;
            string Password = txtPass.Text;
            DateTime NgayVaoLam = DateTime.Parse(dtNVL.Text);
            int MaLuong = (int)lUpLuong.EditValue;
           int LoaiNV = (int)lUpChucVu.EditValue;
            string HinhAnh = pathHA + nvchon.MaNV + ".png";
            int TrangThai =chkTrangthai.Checked ? 1 : 0;
            List<NhanVienDTO> kq = nv_bus.ThemNV(hten,NSinh,GTinh,DChi,Email,Password,HinhAnh,NgayVaoLam,LoaiNV,MaLuong,TrangThai);
            if (kq != null)
            {
                if(pictureBox1.Image!=null)
                {
                    pictureBox1.Image.Save(HinhAnh);
                }
                MessageBox.Show("Thêm Thành Công");
                loadNV();
            }
            else
            {
                MessageBox.Show("Thêm Thất Bại");
            }
           
        }

        private void getDataDetail()
        {
            if (nvchon == null)
            {
                nvchon = new NhanVienDTO();
            }
            nvchon.HovaTen = txtTenNV.Text;
            nvchon.NgaySinh = DateTime.Parse(dtNS.Text);
            nvchon.DiaChi = txtDC.Text;
            nvchon.GioiTinh = int.Parse(txtGT.Text);
            nvchon.Email = txtEmail.Text;
            nvchon.Password = txtPass.Text;
            nvchon.NgayVaoLam = DateTime.Parse(dtNVL.Text);
            nvchon.MaLuong = lUpLuong.SelectionStart;
            nvchon.LoaiNV = lUpChucVu.SelectionStart;
            nvchon.HinhAnh = pathHA + nvchon.MaNV + ".png";
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            if(gvNhanVien.SelectedRowsCount==0)
            {
                MessageBox.Show("Chưa chọn đối tượng để xóa", "Thông Báo");
            }
            else
            {
                DialogResult r = MessageBox.Show("Bạn có chắn chắn muốn xóa nhân viên", "Thông Báo", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                if(DialogResult.Yes==r)
                {
                    int[] i = gvNhanVien.GetSelectedRows();
                    foreach(int rows in i)
                    {
                        if(rows>=0)
                        {
                            //string Email = gvNhanVien.GetRowCellValue(rows, ColMaNV).ToString();
                            string MaNV = gvNhanVien.GetRowCellValue(rows, ColMaNV).ToString();
                            if (nv_bus.XoaNV(MaNV) >= 1)
                            {
                                MessageBox.Show("Xóa Thành Công", "Thông Báo", MessageBoxButtons.OK);
                            }
                            else
                            {
                                MessageBox.Show("Xóa Thất Bại", "Thông Báo", MessageBoxButtons.OK);
                            }
                        }
                        loadNV();
                    }
                    
                }
            }
        }

        

        
        
    }
}
