services:
  itaverso-ai:
    container_name: itaverso-ai
    build: .
    #ports:
    #  - "80:80"
    volumes:
      - ./app:/usr/src/app

    networks:
      - nginx-proxy-manager_default

networks:
  nginx-proxy-manager_default:
    external: true

