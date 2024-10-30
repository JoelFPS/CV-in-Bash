#!/bin/bash

GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m'

function o_mnie() {
    echo -e "\n"
    echo -e "${BLUE}O MNIE${NC}"
    echo -e "${GREEN}"
    typing_effect "           __           __"
    typing_effect "          / /___  ___  / /"
    typing_effect "     __  / / __ \/ _ \/ / "
    typing_effect "    / /_/ / /_/ /  __/ /  "
    typing_effect "    \____/\____/\___/_/   "
    echo -e "${NC}"

    typing_effect "Jestem początkującym informatykiem z dużą motywacją do nauki i rozwoju,"
    typing_effect "gotowym do zdobywania nowych umiejętności, aby przyczyniać się do " 
    typing_effect "realizacji celów firmy. Prawdopodobnie do mistrzostwa brakuje mi "
    typing_effect "tylko kilku milionów linijek kodu... :P "
    echo -e "\n"
}

function doswiadczenie() {
    echo -e "\n"
    echo -e "${BLUE}DOŚWIADCZENIE ZAWODOWE${NC}"
    typing_effect "1. Praktykant – programista | Gedia Poland Sp. z o.o. (05.2022, 11.2022)"
    typing_effect "   - Rozwój w zakresie HTML, CSS, JS, SQLite3"
    typing_effect "   - Zapoznanie z metodyką Scrum oraz narzędziem ClickUp"
    typing_effect "   - Pisanie skryptu do zaprogramowania Bota na Telegramie w Pythonie"
    typing_effect "2. Pomoc elektryka | Perpetum, Zielona Góra (05-06.2024)"
    typing_effect "   - Montaż instalacji elektrycznych"
    echo ""
}

function edukacja() {
    echo -e "\n"
    echo -e "${BLUE}WYKSZTAŁCENIE${NC}"
    typing_effect "Technik informatyk"
    typing_effect "Szkoła: CKZiU Elektryk, Nowa Sól (09.2019-04.2024)"
    echo ""
    echo -e "${BLUE}CERTYFIKATY${NC}"
    typing_effect "   - INF.02: Administracja systemów komputerowych, urządzeń peryferyjnych"
    typing_effect "             i lokalnych sieci komputerowych"
    typing_effect "   - INF.03: Tworzenie i administrowanie stronami internetowymi"
    typing_effect "             i bazami danych"
    echo ""
}

function umiejetnosci() {
    echo -e "\n"
    echo -e "${BLUE}UMIEJĘTNOŚCI TECHNICZNE${NC}"
    typing_effect "Kluczowe umiejętności techniczne:"
    typing_effect "   - MS Office"
    typing_effect "   - Linux Server, Windows 10/11, Windows Server"
    typing_effect "   - Konfiguracja urządzeń sieciowych, systemów i oprogramowania"
    typing_effect "   - Python i oczywiście... Bash :>"
    echo ""
    echo -e "${BLUE}DODATKOWA ZNAJOMOŚĆ${NC}"
    typing_effect "   - MongoDB, MySQL, SQLite3"
    typing_effect "   - HTML, CSS, JavaScript, Node.js, React.js"
    typing_effect "   - Pakiet Google, Zoom"
    typing_effect "   - ClickUp, Rock, JIRA"
    typing_effect "   - Prawko"
    echo ""
    echo -e "${BLUE}NAJWAŻNIEJSZE CECHY${NC}"
    typing_effect "   - Praca w zespole, komunikatywność, zaangażowanie"
    typing_effect "   - Zdolności analityczne, dobra organizacja pracy"
    typing_effect "   - Staranność, samodzielność, sumienność, uczciwość"
    typing_effect "   - Zdolność szybkiego uczenia się, chęć poznania tajników Bash"
    echo ""
}

function zapisz_do_pliku() {
    echo ""
    typing_effect "Trwa pobieranie treści... To może trochę potrwać. Ćwiczmy cierpliwość :D"
    local filename="CV_Joel_Achremczyk.txt"
    {
        o_mnie
        doswiadczenie
        edukacja
        umiejetnosci
    } > "$filename"
    loading
    echo "CV zostało zapisane do pliku: $filename"
}

function typing_effect() {
    local text="$1"
    for (( i=0; i<${#text}; i++ )); do
        echo -n "${text:$i:1}"
        sleep 0.05
    done
    echo ""
}

function loading() {
    echo -ne "${GREEN}Processing${NC}"
    for ((i=0;i<=10;i++)); do
        echo -ne "${GREEN}#${NC}"
        sleep 0.1
    done
    echo -e "${GREEN} Done!${NC}"
}

while true; do
    echo -e "${GREEN}------------------------------${NC}"
    echo -e "${GREEN}     WITAJ W MOIM CV!         ${NC}"
    echo -e "${GREEN}------------------------------${NC}"
    
    echo "1. O mnie"
    echo "2. Doświadczenie"
    echo "3. Edukacja i certyfikaty"
    echo "4. Umiejętności"
    echo "5. Zapisz CV do pliku txt"
    echo "6. Wyjście"
    
    read -r -p "Wybierz numer sekcji: " choice
    case $choice in
        1) o_mnie ;;
        2) doswiadczenie ;;
        3) edukacja ;;
        4) umiejetnosci ;;
        5) zapisz_do_pliku ;;
        6) echo ""
           loading
           typing_effect "Dziękuję za zapoznanie się z moim CV!"
           typing_effect "Pozostaję do dyspozycji i zachęcam do kontaktu"
           typing_effect "Joel Achremczyk"; break ;;
        *) echo -e "${RED}Nieprawidłowy wybór. Spróbuj ponownie.${NC}" ;;
    esac
done
