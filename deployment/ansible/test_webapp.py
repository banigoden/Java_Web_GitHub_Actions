import pytest
import requests

def test_port_80_is_open(host):
    socket = host.socket("tcp://0.0.0.0:80")
    assert socket.is_listening

def test_nginx_is_installed_and_running(host):
    nginx = host.package("nginx")
    assert nginx.is_installed
    service = host.service("nginx")
    assert service.is_running
    assert service.is_enabled

@pytest.mark.parametrize(
    "mount_point",
    [
        "/",
    ],
)

def test_path_is_mounted_core(host, mount_point):
    mount = host.mount_point(mount_point)
    assert mount.exists

def test_app_is_responding(host):
    response = requests.get("http://localhost:8080")
    assert response.status_code == 200
    assert "Hello World" in response.text
