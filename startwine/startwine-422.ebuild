# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v3

EAPI=8

DESCRIPTION="StartWine Launcher - Windows applications/games launcher for Linux"
HOMEPAGE="https://github.com/RusNor/StartWine-Launcher"
SRC_URI="https://github.com/RusNor/StartWine-Launcher/archive/refs/tags/StartWine_v${PV}.tar.gz"
S="${WORKDIR}/StartWine-Launcher-StartWine_v${PV}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

# Новые зависимости для сборки
DEPEND="
	dev-lang/python:3
	dev-lang/rust
	dev-util/cargo
	dev-util/rustup
	sys-devel/gettext
	x11-libs/gtk+:4
	media-libs/libglvnd
	dev-python/pygobject:3
"
RDEPEND="
	app-emulation/wine-vanilla
	x11-misc/xdg-utils
"

BDEPEND="
	dev-vcs/git
"

src_unpack() {
	default
	# Переименовываем папку, если нужно
	mv "${WORKDIR}/StartWine-Launcher-StartWine_v${PV}" "${S}" 2>/dev/null || true
}

src_compile() {
	# Используем официальную систему сборки
	./build all || die "Build failed"
	
	# Копируем собранное в нужное место
	mkdir -p "${T}/build"
	cp -r dist/* "${T}/build/" || die "Copy failed"
}

src_install() {
	# Устанавливаем исполняемый файл
	do bin "${T}/build/startwine"
	
	# Устанавливаем иконки и .desktop файл, если есть
	if [[ -f "${S}/resources/startwine.desktop" ]]; then
		domenu "${S}/resources/startwine.desktop"
	fi
	
	# Добавляем переменную окружения для редактора
	echo "SW_EDITOR=${EPREFIX}/usr/bin/nano" > "${T}/99startwine"
	doenvd "${T}/99startwine"
}

pkg_postinst() {
	elog "StartWine успешно установлен!"
	elog "Для запуска используйте команду: startwine"
	elog ""
	elog "При первом запуске будет загружен runtime."
	elog "Если нужен другой редактор, установите переменную SW_EDITOR"
}

pkg_prerm() {
	elog "При удалении не забудьте вручную удалить ~/.local/share/startwine и ~/.config/startwine"
}
