Role Name
=========

Sign certificate

Requirements
------------

Remote sign authority shall contain ./sign.sh

Role Variables
--------------

validity:          - validity duration of signed sertificate
crt_src_path:      - path to sertificates
req_src_file:      - local path to sert file
local_signed_crt:  - local path to signed file
local_ca_crt:      - local path to CA certificate
cert_folder:       - folder with CA authority on a remote host

Variable for sign.sh file
deploy_sign_sh:    - (yes/no) deploy sign.sh file on a remote host
ca-cert:           - CA certifcate file name
ca-key:            - CA certificate key file name

Dependencies
------------

None

Example Playbook
----------------

Running play book
```
  ls -1 | xargs -i ansible-playbook sign-cert -i $CA_HOST, --extra-vars "crt_src_path={}"
```

Signing multiple sertificates
```
  - name: myrole
    with_items:
      - "aone"
    include_role:
      name: viacheslavisaev.sign-cert
    vars:
      crt_suffix: "{{ item }}"
```

License
-------

BSD

Author Information
------------------

Viacheslav Isaev has two decades of experience of distributed high payload systems development. He has been in charge of developing control systems for safety-critical facilities like railroads and particle accelerators, high-payload event processing systems for cybersecurity and mobile access points, introducing in house CI/CD practices. His hands-on experience incldues all stages of IT solutions development and operation. Vyacheslav’s interests lays in automation spectr either it is pure software or hardware-software solutions. Vyacheslav defines the key to success in 3 pillars  Domain Driven Design, Behavioral Driven and Test-Driven Development, which are standing on the foundation of  Object Oriented Design and Clean Code practices.

