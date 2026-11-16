class SkillItem {
  final String judul;
  final String keterangan;

  const SkillItem({
    required this.judul,
    required this.keterangan,
  });
}

class EducationItem {
  final String institusi;
  final String jurusan;
  final String tahun;

  const EducationItem({
    required this.institusi,
    required this.jurusan,
    required this.tahun,
  });
}

class Profile {
  final String nama;
  final String nim;
  final String prodi;
  final String kelas;
  final String bio;
  final String email;
  final String hp;
  final String github;
  final String fotoAsset;
  final List<SkillItem> keahlianHobi;
  final List<EducationItem> riwayatPendidikan;

  const Profile({
    required this.nama,
    required this.nim,
    required this.prodi,
    required this.kelas,
    required this.bio,
    required this.email,
    required this.hp,
    required this.github,
    required this.fotoAsset,
    required this.keahlianHobi,
    required this.riwayatPendidikan,
  });

  Profile copyWith({
    String? nama,
    String? nim,
    String? prodi,
    String? kelas,
    String? bio,
    String? email,
    String? hp,
    String? github,
    String? fotoAsset,
  }) {
    return Profile(
      nama: nama ?? this.nama,
      nim: nim ?? this.nim,
      prodi: prodi ?? this.prodi,
      kelas: kelas ?? this.kelas,
      bio: bio ?? this.bio,
      email: email ?? this.email,
      hp: hp ?? this.hp,
      github: github ?? this.github,
      fotoAsset: fotoAsset ?? this.fotoAsset,
      keahlianHobi: keahlianHobi,
      riwayatPendidikan: riwayatPendidikan,
    );
  }

  static Profile initialData() {
    return const Profile(
      nama: 'Muhamad Rayhan',
      nim: '1124160206',
      prodi: 'Teknik Informatika',
      kelas: 'TI-SE-3',
      bio: 'Mahasiswa Teknik Informatika konsentrasi Software Engineering yang fokus pada pengembangan aplikasi mobile dan web.',
      email: 'mr0031689@gmail.com',
      hp: '085896732467',
      github: 'github.com/rayhan-18',
      fotoAsset: 'assets/images/orangganteng.jpeg',
      keahlianHobi: [
        SkillItem(
          judul: 'Mobile App Development',
          keterangan: 'Pengembangan aplikasi Android menggunakan Flutter & Dart',
        ),
        SkillItem(
          judul: 'Web & Backend Development',
          keterangan: 'PHP, Java, MySQL, REST API, dan Supabase',
        ),
        SkillItem(
          judul: 'UI/UX Prototyping',
          keterangan: 'Perancangan antarmuka aplikasi menggunakan Figma',
        ),
        SkillItem(
          judul: 'Hobi: Membaca Komik',
          keterangan: 'Membaca serial webtoon dan manga di waktu luang',
        ),
      ],
      riwayatPendidikan: [
        EducationItem(
          institusi: 'Institut Teknologi dan Bisnis Bina Sarana Global',
          jurusan: 'S1 Teknik Informatika - Software Engineering',
          tahun: '2024 - Sekarang',
        ),
        EducationItem(
          institusi: 'SMK Islamiyah Ciputat',
          jurusan: 'Pendidikan Menengah Kejuruan',
          tahun: '2021 - 2024',
        ),
      ],
    );
  }
}