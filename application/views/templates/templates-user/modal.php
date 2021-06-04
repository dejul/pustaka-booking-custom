<div class="modal fade" tabindex="-1" role="dialog" id="loginModal">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">Login Member</h5>
				<button class="close" type="button" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<form action="<?= base_url('member'); ?>" method="post">
				<div class="modal-body">
					<div class="form-group row">
						<label for="email" class="col-sm-2 col-form-label">Email</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="email" name="email" placeholder="Alamat Email">
						</div>
					</div>
					<div class="form-group row">
						<label for="email" class="col-sm-2 col-form-label">Password</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="password" name="password" placeholder="Password">
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-outline-secondary" data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-outline-primary">Log In</button>
				</div>
			</form>
		</div>
	</div>
</div>

<div class="modal fade" tabindex="-1" role="dialog" id="daftarModal">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">Daftar Anggota</h5>
				<button class="close" type="button" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<form action="<?= base_url('member/daftar'); ?>" method="post">
				<div class="modal-body">
					<div class="form-group">
						<input type="text" class="form-control form-control-user" id="nama" name="nama" placeholder="Nama Lengkap">
					</div>
					<div class="form-group">
						<input type="text" class="form-control form-control-user" id="alamat" name="alamat" placeholder="Alamat">
					</div>
					<div class="form-group">
						<input type="text" class="form-control form-control-user" id="email" name="email" placeholder="Alamat Email">
					</div>
					<div class="form-group">
						<input type="password" class="form-control form-control-user" id="password1" name="password1" placeholder="Password">
					</div>
					<div class="form-group">
						<input type="password" class="form-control form-control-user" id="password2" name="password2" placeholder="Konfirmasi Password">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-outline-secondary" data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-outline-primary">Simpan</button>
				</div>
			</form>
		</div>
	</div>
</div>

<div class="modal fade" tabindex="-1" role="dialog" id="infoModal">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">Informasi</h5>
				<button class="close" type="button" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<span class="alert alert-message alert-success">Waktu Pengambilan Buku 1 x 24 Jam dari Booking!!!</span>
			</div>
			<div class="modal-footer">
				<a class="btn btn-outline-info" href="<?= base_url(); ?>">Ok</a>
			</div>
		</div>
	</div>
</div>