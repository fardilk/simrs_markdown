git_pull() {
   echo "execute `git pull`"
   git pull
}

echo "Running a periodic `git pull` action"
while true
    do
        git_pull

        echo 'Sleeping for 5 seconds'
        sleep 5  # Waits 5 seconds.
    done
