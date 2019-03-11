stop_command () {
    if ! is_running; then
        error "Devilbox containers are not running"
        return "$KO_CODE"
    fi
    docker-compose stop
    docker-compose rm -f
}
