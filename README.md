# startwine-overlays

[![Gentoo Repository](https://img.shields.io/badge/Gentoo-Official-brightgreen)](https://github.com/gentoo/api-gentoo-org/pull/813)
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

---

## 🇬🇧 English / 🇷🇺 Русский

### Description / Описание

**StartWine Launcher** — это инструмент для запуска Windows-приложений и игр на Linux.  
Данный оверлей предоставляет ebuild для простой установки через Portage.

---

## 📦 Installation / Установка

### 1. Add the overlay / Подключите оверлей

```bash
eselect repository enable startwine-overlays
emerge --sync startwine-overlays
2. Install StartWine / Установите StartWine
bash
emerge --ask startwine
🔄 Updating / Обновление
Чтобы обновить StartWine до последней версии:

bash
emerge --sync startwine-overlays
emerge --update --ask startwine
Или одной командой:

bash
emerge --sync startwine-overlays && emerge --update --ask startwine
🗑️ Uninstalling / Удаление
Чтобы полностью удалить StartWine:

bash
emerge --unmerge startwine
После удаления вы также можете вручную очистить файлы конфигурации (если они остались):

bash
rm -rf ~/.local/share/startwine ~/.config/startwine
📦 Dependencies / Зависимости
Ebuild автоматически установит необходимые зависимости:

Wine (vanilla)

Python 3

GTK 4

Rust / Cargo

Прочие требуемые библиотеки

🆘 Support / Поддержка
Bug reports / Сообщить об ошибке: GitHub Issues

Maintainer / Мейнтейнер: Lis21712 (pri3rak217@yandex.ru)

🔗 Links / Ссылки
StartWine Official Repository / Официальный репозиторий StartWine

Gentoo Overlays List / Список оверлеев Gentoo

📄 License / Лицензия
This project is licensed under the GNU General Public License v3.0 – see the LICENSE file for details.

Happy gaming! / Удачных игр! 🎮
