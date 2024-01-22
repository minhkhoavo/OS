while true; do
    echo "---------------------------------------"
    echo "Main Menu"
    echo "---------------------------------------"
    echo "[1] Show today date/time"
    echo "[2] Show all files in current directory"
    echo "[3] Show users"
    echo "[4] Show calendar"
    echo "[5] Exit/Stop"

    read -p "Enter your choice [1-5]: " choice

    case $choice in
        1)
            echo "Today's date/time: $(date)"
            ;;
        2)
            echo "Files in current directory:"
            ls
            ;;
        3)
            echo "List of users:"
            who
            ;;
        4)
            echo "Calendar:"
            cal
            ;;
        5)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 5."
            ;;
    esac
done
