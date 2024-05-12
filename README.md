# Oma miniprojekti
Palvelinten hallinta -kurssin miniprojekti(Karvinen 2024). Itse projektin toteutusvaiheita voit seurata tekemästäni [GitHub raportista.](https://github.com/NicklasHH/Palvelinten-hallinta/blob/master/h7%20Miniprojeti/h7%20miniprojekti.md)


#### Projektin tarkoitus
Tarkoituksena on luoda pilveen master kone, jonka avulla saadaan paikalliselle virtuaalikone minionille ladattua halutut ohjelmistokehityksen tarpeet helposti. Tämän avulla voin helposti luoda jokaiselle kehitysprojektilleni omat virtuaalikoneet samoilla asetuksilla ja ohjelmistoilla.

#### Käyttöohje
Tässä osiossa käyn läpi käyttöohjeen, koska asennusohjeen antaminen olisi mielestäni huono ratkaisu, koska olen rakentanut master koneen pilveen, joten projektin toteuttaminen ei onnistu ilman koodin muokkausta.
1. Luo kansio(Vaikka työpöydälle)
2. Kopio luotuun kansioon vagrantfile 
3. Avaa terminaali, navigoi luotuun kansioon ja anna komento `vagrant up`
4. Avaa toinen terminaali ja yhdistä Master koneeseen komennolla `ssh masteri@178.62.241.242`
5. Kun Minionin asennus on läpi, hyväksy Masterilla Minionin avain komennolla `sudo salt-key -A`
6. Aja tilat Minionille komennolla `sudo salt '*' state.apply programsBionic`
7. Kun tilat on ajettu, on Minion ajokunnossa.


### Lopputulos
Sovellusvalikko asennettuine ohjelmineen  
  ![5.png](5.png)

### Huomionarvoiset asiat
Toteutin projektin itselleni, joten tämän toistaminen ei onnistu ilman muokkauksia. Koska käytössä on pilvessä oleva master, ei samat master konfiguraatiot toimi paikalliselle asennukselle. Lisäksi asennettavien ohjelmien kohdalla on eroavaisuuksia käyttöjärjestelmällä. Lopullisessa versiossa käytin Ubuntun Bionic käyttöjärjestelmää paikallisilla virtuaalikoneilla, jolloin jouduin käyttämään useamman ohjelman asennukseen snap paketinhallintaa.

#### Käytetty koodi
- [Vagrantfile](vagrantfile)
- [Masterin salt tiedosto](salt)


##### Lisenssi kaikelle projektin sisällölle on sama: GNU GPL 3

#### Lähteet
Karvinen, T. 2024. Infra as Code - Palvelinten hallinta 2024. Luettavissa: https://terokarvinen.com/2024/configuration-management-2024-spring/. Luettu: 12.5.2024.