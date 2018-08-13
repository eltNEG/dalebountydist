pragma solidity 0.4.24;

contract Token {
    
    uint8 public decimals;

    function totalSupply() constant returns (uint256 supply) {}

    function balanceOf(address _owner) constant returns (uint256 balance) {}

    function transfer(address _to, uint256 _value) public returns (bool success) {}
    
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {}

    event Transfer(address indexed _from, address indexed _to, uint256 _value);

    event Approval(address indexed _owner, address indexed _spender, uint256 _value);

}

contract Distributor {
    address public owner;
    struct Recipient {
        address recipientAddress;
        uint tokenValue;
        //bool recievedToken;
    }
    Recipient[] public Recipients;

    constructor() public {
        owner = msg.sender;
        //Twitter
        Recipients.push(Recipient(0xd90dCe04ea14D33F91fBc114451d881Be8663148, 38.928*1000)); //Dcoollakky247
        Recipients.push(Recipient(0x72b0DE7A3340f204431655243C2235De822E7442, 25.952*1000)); //Yamanbarat55
        Recipients.push(Recipient(0x5Cae2473E1A7082d10637183898a931bC8A89cf6, 0*1000)); //Sokerz
        Recipients.push(Recipient(0x899381758746e07C6074a46C6B54d0BB312ea181, 25.952*1000)); //ojosamson
        Recipients.push(Recipient(0xd6C93A3148140dB082a17C2Bb100E66acaAAEE0b, 0*1000)); //Awaknow
        Recipients.push(Recipient(0xFd23501DfF368b3aD756350fF9B18e6afB638afD, 25.952*1000)); //joykulot
        Recipients.push(Recipient(0x098E414537A78c322C7FfbB66068e3411B4b981A, 38.928*1000)); //maxinvestor
        Recipients.push(Recipient(0x58ac92F7D03dcd53eA369BFCAD80933d165BdcD5, 25.952*1000)); //Nemoy
        Recipients.push(Recipient(0xAC360B63d7c00D7A069Cf9ea6Bbd48CCdfB71ABF, 0*1000)); //chicipuci
        Recipients.push(Recipient(0x8EA5697B0555b0Ed91D3f45741d7abe97D8Ca2Df, 25.952*1000)); //alisaddt
        Recipients.push(Recipient(0xa50bF945C446f774A2e2d47c129df061b874dc75, 38.928*1000)); //AnalynCadiz
        Recipients.push(Recipient(0x38b9252759d577e892F6806Ca26655Da77899DAd, 9.732*1000)); //topolan
        Recipients.push(Recipient(0xf3160885190621e460C62229223f39a0f13E64E2, 38.928*1000)); //Reonsver
        Recipients.push(Recipient(0xA8fa22eD4932fd08B6AA096657250C19ec0d8631, 38.928*1000)); //Paha87
        Recipients.push(Recipient(0x4A4fA0a67Be1C9137F2eC46ff496B7D465210cF1, 38.928*1000)); //azraellor
        Recipients.push(Recipient(0x1322A96779F4Acc28c058579BD712A9CeFd0c835, 25.952*1000)); //bitcoinbaba01
        Recipients.push(Recipient(0x646a6B9512aeF11825A3A88a3Deab6629f18AC58, 38.928*1000)); //alexbellok
        Recipients.push(Recipient(0x7Cf5762F8caeF8d3F04376efaCaFC2100510BCD3, 25.952*1000)); //hoangtubia
        Recipients.push(Recipient(0x497e11294BE1288d6101F1BdAaaFF03363a39e80, 25.952*1000)); //Bramadi
        Recipients.push(Recipient(0xaa3165Bc7061edA047dd38F64C190d6F3c1Cc0A2, 38.928*1000)); //AlenaShedin
        Recipients.push(Recipient(0x160BA5dC811fc91D0D456bc51F5ff6de9C4dfd81, 38.928*1000)); //toshiik
        Recipients.push(Recipient(0x1f01d3b42d7E9f427afdfb3720AA9F949240dA75, 6.488*1000)); //Hellboy18
        Recipients.push(Recipient(0x74A659A42AD88f335cC35D813C8fe7bBF7e44A1e, 38.928*1000)); //airdropwwani
        Recipients.push(Recipient(0xD2d8fff893a28601c15251C9019f427eF54410F6, 38.928*1000)); //DeveeKyz
        Recipients.push(Recipient(0x2c4F8E85D1556Af6DCeF8b197681F057432e62a0, 25.952*1000)); //dinom23
        //Recipients.push(Recipient(https://www.twitteraudit.com/dmitriykarasev5, 0)); //KarasevDm
        Recipients.push(Recipient(0x50819B10DD77423683241Bc26Ad19cCf1F83A629, 25.952*1000)); //KarasevDm
        Recipients.push(Recipient(0x0D554C6ee2a2f31441080f23ba6D36B845949d23, 38.928*1000)); //secret0x
        Recipients.push(Recipient(0x9e54390463b81A9aA084D2AceE0f48c9b414FD3F, 38.928*1000)); //Igloo74
        Recipients.push(Recipient(0xd3199a1B853286d0f64588CC216318fCC24aCeF0, 38.928*1000)); //Zavalishin
        Recipients.push(Recipient(0x885eD6bA252F7Db8Dcd445f03FA5007FC3679797, 12.976*1000)); //Thai Fx
        Recipients.push(Recipient(0x23801f6E95CA594746Af77204Ce090144aEB6fE2, 38.928*1000)); //LastKiss
        Recipients.push(Recipient(0x8c3D8cf52d9895D529E0789Cc0dC962649D12674, 38.928*1000)); //joke7r1
        Recipients.push(Recipient(0x6DA6D6F50738A6fECa3279604D4d6da3c937Db71, 38.928*1000)); //hypnosse
        Recipients.push(Recipient(0x0649c8c75aea1148b3e51b5f7189ff49ff4b3fd5, 38.928*1000)); //Ivanchailebedev
        Recipients.push(Recipient(0x269EC49b517052B717976B1e84d2eDbB56Fb1b03, 38.928*1000)); //jacobjonson
        Recipients.push(Recipient(0x2Bb351e65Ce7875f1586d80C649AB68c1FaF95eD, 38.928*1000)); //jannatul ferdous
        Recipients.push(Recipient(0x02CFa0abc6c05de03B2E03b2Ce9d4B4554cE8366, 38.928*1000)); //lysenko_y
        Recipients.push(Recipient(0x7794b57d50Ef4aeDE46D0E245C4A44CE4Ed011A0, 25.952*1000)); //Tamtrang
        Recipients.push(Recipient(0x133e9693907A85230F997daDF3fF219e4946b1CE, 25.952*1000)); //Robert De Crypto
        Recipients.push(Recipient(0xC2775F355F3377293Ffc6CE11ab0841Ce183A44F, 12.976*1000)); //KINGCHACHA1
        Recipients.push(Recipient(0x64aA278Fdc9AC0BC4f6E3a0365753368AA467DBD, 38.928*1000)); //klinohek
        Recipients.push(Recipient(0xF09e67698bacB9Aad5d9C825FF61a3A1E55568C6, 0*1000)); //katrusia
        Recipients.push(Recipient(0x82a49482Ce070291b7B3F2d38d5fc3581780A4BF, 38.928*1000)); //Kravmaxx
        Recipients.push(Recipient(0xbaBee887566224FB964273Ea117BD0c752Fb9D04, 25.952*1000)); //KriptaBiznes
        Recipients.push(Recipient(0xA850a2Df4245982901Ff86b65dfC24110EEC7Cca, 12.976*1000)); //boynton2857dina557
        Recipients.push(Recipient(0xe687AE08bea9040DB3c6Ba1F6B92A7C8D7ec8DE1, 38.928*1000)); //Kavun_L
        Recipients.push(Recipient(0x6ab75e2577Ced422F57C826Ef60f9F538d16C608, 12.976*1000)); //watukpilek
        Recipients.push(Recipient(0x44a46A6FeB83e787a80e5e86a41e3806D1B778dD, 25.952*1000)); //rexuss
        Recipients.push(Recipient(0xe633b21dc49e06C731600038e9d6D3bA25DcE622, 25.952*1000)); //MD Milon
        Recipients.push(Recipient(0xAc9e3B74135522CC45523F63F0bB53Cfa45cb1CF, 38.928*1000)); //MedvedevVasilyS
        Recipients.push(Recipient(0x906dfd49748DBc3c4309348070760f68bf108776, 38.928*1000)); //nancekapor
        Recipients.push(Recipient(0x7aF4Cb205142a4faC2c100f79258dB06A7B31C24, 38.928*1000)); //Stug
        Recipients.push(Recipient(0xee98a8C53DBcc402BD3a5627849FFc7aEBd8BEfE, 0*1000)); //Nikos_Anasias
        Recipients.push(Recipient(0x396629D7bEea698ae897bf230721decaB7C62DBE, 25.952*1000)); //trikovasvetlana
        Recipients.push(Recipient(0x127962b9b5da42856d74ee9d923305dcfae277b8, 25.952*1000)); //slendy1830
        Recipients.push(Recipient(0x50c8D1fE517673dA731090A6792BA2c59508a8A7, 9.732*1000)); //paveleso
        Recipients.push(Recipient(0xA98d89899CB5498a5ae27430C488fd3dC8d7fce4, 38.928*1000)); //bluedragon11
        Recipients.push(Recipient(0x616c9eBfaeE942e260f32D64ff6D4380BD619E94, 38.928*1000)); //bboy22
        Recipients.push(Recipient(0x3374f7Fc9846255f2E154b6C6CB5bC97C15205C4, 38.928*1000)); //redwhite037
        Recipients.push(Recipient(0xD2d4aBC3a1F1Bcc539941A2019AdeC7fdaEcF24E, 38.928*1000)); //regina_skyblue
        Recipients.push(Recipient(0xA04a151Eb04ba070e776AE011a85deC8F5030101, 38.928*1000)); //Heopu
        Recipients.push(Recipient(0xCDa7A32b1BD9539a509aEAA764E7559219D28aD7, 38.928*1000)); //Maykl
        Recipients.push(Recipient(0x1A441cDEA47f1D0f704f2b26C5F620B46292DBBD, 25.952*1000)); //@Kripto-12
        Recipients.push(Recipient(0x1A441cDEA47f1D0f704f2b26C5F620B46292DBBD, 0*1000)); //@Kripto
        Recipients.push(Recipient(0x6bc5759f15FD5f13Edda81743565e893506b4374, 38.928*1000)); //Ruslan84
        Recipients.push(Recipient(0xBf936c8fd9a17bb0141a4a71aF6116Dd6F3B7C69, 38.928*1000)); //kripterst
        Recipients.push(Recipient(0xe189B1950B9Af7D6cd0B48148e68865823402A71, 38.928*1000)); //Alexandr Shenkarenko
        Recipients.push(Recipient(0x7c893f5d3edc9671bc682db9df3ce993c2e520ff, 38.928*1000)); //shilpy275
        Recipients.push(Recipient(0x6Cd20F597DdcB3995A66DE7416D159A88a980367, 38.928*1000)); //harvestnewcoin
        Recipients.push(Recipient(0x6Cd20F597DdcB3995A66DE7416D159A88a980367, 0*1000)); //harvestnewcoin
        Recipients.push(Recipient(0x9A5fff48B700cf99a185a1586F1bC74DD0Af9F7C, 38.928*1000)); //SidoraK_T
        Recipients.push(Recipient(0x8Eba7A557c74dDB09d14A04B103CCe8320d79Dc7, 38.928*1000)); //Skaser
        Recipients.push(Recipient(0x394904C294b0FD84a200708b80764c63792EaCB2, 25.952*1000)); //ElenaS
        Recipients.push(Recipient(0x73fC0cBbBFD338ac5c205Fec7BC7959E12f8f74a, 38.928*1000)); //toretsk
        Recipients.push(Recipient(0x32Cc810c02d0deD4d43095CD3F8f892981FF02EF, 38.928*1000)); //svetamassl
        Recipients.push(Recipient(0x2E73C5C9890818016C7E2a520E902befcd103c9E, 38.928*1000)); //vdavidd
        Recipients.push(Recipient(0x69Ec79FCa4C94B9eaa1d5d6776329fA120ef90D9, 25.952*1000)); //serjbarusov
        Recipients.push(Recipient(0x3A98dAa3dAa51E3B2266A776A5a7E8dc8B735500, 38.928*1000)); //simantobd
        Recipients.push(Recipient(0xc38a4feFC0D2B94686F4E512952e8FB985FeA1B0, 25.952*1000)); //i7claufe
        Recipients.push(Recipient(0xe0bBd84c96042cD7c9f3e52310BeEd1c15621a45, 25.952*1000)); //yepik
        Recipients.push(Recipient(0x59B53cc87248DEFb36b600A0895372dD7908813b, 38.928*1000)); //unreborn
        Recipients.push(Recipient(0x6a261D32156A26086C3cF77cF23a9e849D7ac44f, 25.952*1000)); //Otard
        Recipients.push(Recipient(0x03c041db905E0f8dE0b7eCaBb92c775E2b8dE7ff, 38.928*1000)); //dianepot
        Recipients.push(Recipient(0xd6C6Aa53C1707cBC662a2b79dF54921e711271dE, 38.928*1000)); //Enijesiku Sulaimom
        Recipients.push(Recipient(0x7E7008aC0166cb884AcF861D9749566242AFD105, 38.928*1000)); //Cryptomania098
        Recipients.push(Recipient(0xFB407B2C1A3a7185244039D89B999499ff6e0a48, 38.928*1000)); //Omooba098
        Recipients.push(Recipient(0xd3ee5Bd83dCB85060adB7F45D87dAAFCF96B2f09, 38.928*1000)); //lider777
        //Recipients.push(Recipient(, 0)); //
        //Recipients.push(Recipient(, 0)); //eltneg
        Recipients.push(Recipient(0x281c54D619A63E2AF1b697E599ff42Ac37839b3F, 29.196*1000)); //Guli
        Recipients.push(Recipient(0xd76123271d861Dc7a7ab414deC10EeDC5577B946, 19.464*1000)); //Umar
        Recipients.push(Recipient(0x7bEd54d387aD18b98FF09A7428E533Dc2ADB8734, 29.196*1000)); //Bajiguer
        Recipients.push(Recipient(0x9Cc826774Ca41A933573EF65bd7123a3FCF92ae1, 38.928*1000)); //ElenaNem
        Recipients.push(Recipient(0xf7d2F963bed1bEe356a5Ad238831B75988Bda7bc, 29.196*1000)); //Maxim82
        Recipients.push(Recipient(0x0595F70F09dB2e18F99D2408883453876C1786eE, 29.196*1000)); //boexs231
        Recipients.push(Recipient(0xf7C92c8206784Ef6c335965B33a4699C8B34C048, 29.196*1000)); //gramton001
        Recipients.push(Recipient(0xb4Ff7334fE963db0E8f677a6c2Bbb9D3AcE1B580, 29.196*1000)); //Cabella
        Recipients.push(Recipient(0x93f1F825DC6e653f4e0E90D374f093B69163423F, 19.464*1000)); //Saifullahbabu
        Recipients.push(Recipient(0xaa68eCa20F3AadaBFCACF44228962Fbd723e1e01, 19.464*1000)); //Corvin17
        Recipients.push(Recipient(0xdb213322E0852925017B826B384A583321D33F9E, 0*1000)); //Ssaahw
        Recipients.push(Recipient(0xba5b928a6959c563075174C17F4d361507003a3A, 29.196*1000)); //TatjanaMakar
        Recipients.push(Recipient(0xe08bE7be0Da067a8B35D27A9eFBF86B01fB8A2c4, 29.196*1000)); //ZarinaAhmedjan
        Recipients.push(Recipient(0x0658667E721123b31b480AfD32287055399cdceC, 38.928*1000)); //YurLinOne
        Recipients.push(Recipient(0x4f7ff8591A549790cD575A32934eC6e9D11a9524, 9.732*1000)); //herurist
        Recipients.push(Recipient(0x8e779Cdef8bb43178b018101f54aC3230Ec19495, 29.196*1000)); //IciCestMathers
        Recipients.push(Recipient(0x0d9E1e943272CFCdB4cC83712650683A740a38f2, 19.464*1000)); //Anam17
        Recipients.push(Recipient(0x0A8223852ce225eA5656bEc7Eb8a071208dA866D, 29.196*1000)); //Starlaaa87
        Recipients.push(Recipient(0x47ea3d8D172790343b60f9F16143bD329DdCC392, 19.464*1000)); //artleks
        Recipients.push(Recipient(0x327052fc98E33480E9dc9Da40E40F5df2E426d9B, 29.196*1000)); //CalvinTran1990
        Recipients.push(Recipient(0x062138ec5295115C520C5af226c2F2632567eFf2, 0*1000*1000)); //sonali2015
        Recipients.push(Recipient(0x1c3207E588518EEb560d123b3b9b672DF3Cc3d4e, 19.464*1000)); //Moh ridwan
        Recipients.push(Recipient(0x75F3eD5f2080A1b8bC29d8282e63aa206903115f, 9.732*1000)); //Dek maria
        Recipients.push(Recipient(0x7d4ce22321121A9d0ebfc214E1CfB59125Cf385C, 0*1000)); //habibsir
        Recipients.push(Recipient(0xA0676eDd171904F489D7E76B554E11E0167397C3, 29.196*1000)); //hidayatgp1
        Recipients.push(Recipient(0xBe52e64Fb68BE2AC3933F96962a234fcE75801dC, 29.196*1000)); //nilbtc4555
        Recipients.push(Recipient(0x0E6CB35Dc823f0cdfbf4801Bbd8fa599B7ee0aD6, 29.196*1000)); //ajaxad
        Recipients.push(Recipient(0x6530055B5BF2500Bc3E0F62c28C76E8E80cd08Dc, 29.196*1000)); //1Nebonad1golovoy1
        Recipients.push(Recipient(0x6a261D32156A26086C3cF77cF23a9e849D7ac44f, 19.464*1000)); //Otard
        Recipients.push(Recipient(0x869F7Da3d2dbA379e0060319bB5F4f8B3056c6E6, 29.196*1000)); //Kotofeyka
        Recipients.push(Recipient(0x2F590c58C8e3047166F3Bb30242CD61dE4a9e056, 19.464*1000)); //giayen2018
        Recipients.push(Recipient(0x1b44Fb33917Aa102240f6E4109F6094Ad9943Ff8, 29.196*1000)); //Ama66
        Recipients.push(Recipient(0x609D59802E42227942CECa5B421D0d3141CD0969, 19.464*1000)); //kotakamal
        Recipients.push(Recipient(0xb9814A72392A5F79C68C281Cf7543e82Ce861557, 19.464*1000)); //Aquajep
        Recipients.push(Recipient(0x8c117d726bb5109CBbC96B1Ae2B30BBfC65A20f4, 19.464*1000)); //MargoIvanova
        Recipients.push(Recipient(0x52ac2f74e5F7920250d30FBA4131b8c4e6f4597A, 19.464*1000)); //oooecy
        Recipients.push(Recipient(0x9BDbEb5F6E59dd471Bc296B97266D3Ee634B7c7e, 19.464*1000)); //ironman68
        Recipients.push(Recipient(0xeC72280F671c978484672A5562df07E680b524C1, 0)); //Marmowitz
        Recipients.push(Recipient(0x6c248f43AE613b42448d4EB178E59b06C24F2c83, 29.196*1000)); //sworker
        Recipients.push(Recipient(0xA621A2E10A88DCDD274e0B2225a10AF8D727950e, 0)); //Gregolev
        Recipients.push(Recipient(0xf6c3bFb64FdB7dfFC17E783653E8029EA1635581, 6.488*1000)); //Mstismakov
        Recipients.push(Recipient(0xeC5923Cd130647A70F0ca7De99047b464b19C777, 29.196*1000)); //Chorohon
        Recipients.push(Recipient(0xb5372D530DFB547Adb2e04cbCEa895ceb739B741, 19.464*1000)); //dekcutmanis
        Recipients.push(Recipient(0x67300c27f279b474C0988066ee2D18639C5C79a1, 29.196*1000)); //annaverba
        Recipients.push(Recipient(0x57467D4CB04dB2B235de1277aEf04Bb1335CA73b, 6.488*1000)); //Bohitek97
        Recipients.push(Recipient(0x7cD7b91cEd906FE622902ec9870809FbaC87277F, 29.196*1000)); //Bitum
        Recipients.push(Recipient(0x3F7C14E402fcC3864D6e1aE1C4747ff1805D0512, 9.732*1000)); //daries91
        Recipients.push(Recipient(0x6c71787bAf6a240CD597B0CFb7D0047fA37d08fE, 9.732*1000)); //Tnt1971
        Recipients.push(Recipient(0xFeb9456EE36a429D4Cc028F112150f0a8914295c, 29.196*1000)); //segwlala
        Recipients.push(Recipient(0x0018D33F354b48a20963A0F215D2C136D9dD1812, 19.464*1000)); //sureblinks
        Recipients.push(Recipient(0x2793b5e7202C44cabacE43F928643782a782F021, 38.928*1000)); //dutchkay
        Recipients.push(Recipient(0x56A660EA3DC28Db18197185a78b74c7507867740, 9.732*1000)); //artiommatvienko
        Recipients.push(Recipient(0x825291DCFfF7F2f6ADF4943Cea4877afa900028E, 9.732*1000)); //Akhat43
        Recipients.push(Recipient(0x9BC89e674Ff07c74b7f2bD6F8D7Db20Be7FD679c, 9.732*1000)); //archiirub
        Recipients.push(Recipient(0x1ff3E094c1c6ed9228079E5cb60a096842157F52, 9.732*1000)); //Neshtonevecno
        //Recipients.push(Recipient(https://mobile.twitter.com/Bojessubejo, 6.488)); //Bejo0908
        Recipients.push(Recipient(0x8eB173c458A505a22CaAB0Ee0209751ad91Bee0a, 9.732*1000)); //pacho08
        Recipients.push(Recipient(0xf935847A822B1f5937c0d3fFeBf3675Fd9945933, 9.732*1000)); //opaopa33
        Recipients.push(Recipient(0xF68E5086078A84233117183A84cb044021A8144A, 6.488*1000)); //Sentoy
        Recipients.push(Recipient(0x283b2587C57A7c386cD08c9c69ca1e8f614e38EE, 9.732*1000)); //maratmans1991
        Recipients.push(Recipient(0x17A7d45565B76D56C31E3B2f9F469500F046132c, 19.464*1000)); //jahebau
        Recipients.push(Recipient(0x8b683d22990f2AA6baa8d59300e984F717602B23, 9.732*1000)); //Ahsanjoy
        Recipients.push(Recipient(0xeff190Bf185B6DF5dCaaF238bf9228a66913f0A2, 9.732*1000)); //Saddam Bin Delowar
        Recipients.push(Recipient(0x40249ee8b64f91fA7e42dc93FFa16df76938D0aC, 9.732*1000)); //nfc69
        Recipients.push(Recipient(0x0e7B747d118e0D39d6abe64ee2DaF00560BCE16a, 6.488*1000)); //Febrisedenk
        Recipients.push(Recipient(0x1ab4a204d582FE1aa7DA8450E58D04435073737F, 9.732*1000)); //SochiStarS
        Recipients.push(Recipient(0x6E919e099bc33F9e2F4699c0b0966185B4866EBc, 12.976*1000)); //FHD2000
        Recipients.push(Recipient(0xf5a5BDF579Cda45810b44Db0742b2Ff58dc05c75, 6.488*1000)); //Chibongvdg
        Recipients.push(Recipient(0x97681fC3cDb2D3E914c089A7Cf644B2eD72CE4F4, 9.732*1000)); //Decap
        Recipients.push(Recipient(0xF355163a83A223C0ED55bf8481b4f93D019DA657, 9.732*1000)); //lakmali123
        Recipients.push(Recipient(0x664CaBAA22CED044AbB55F373616c95bC67E034f, 9.732*1000)); //temolosy
        Recipients.push(Recipient(0x941256b482832DDbcfdA5af7D7Fe9F423F09A3a8, 9.732*1000)); //anjuara29
        Recipients.push(Recipient(0xa157B0019710b79336D584a698F8f26D2b8C6a56, 19.464*1000)); //CripTanya
        Recipients.push(Recipient(0xAf6C0481bfa877deC0913b3987C4807aC42664bD, 6.488*1000)); //NihgtlessCity
        Recipients.push(Recipient(0x6A87506EFd206e8Ce3648813725101CA89DB49dC, 6.488*1000)); //dede_elda
        Recipients.push(Recipient(0xDB55Be14A03F3205Fed2D785E52cb422ec74980D, 3.244*1000)); //Aiyoky
        Recipients.push(Recipient(0xf6B6C199aE62DA5Bc0c5B59eEAa32903853C5d19, 9.732*1000)); //Eilagrat
        Recipients.push(Recipient(0xe7195878C7d5840332f08B9496C689165745DF20, 9.732*1000)); //akterjuli
        Recipients.push(Recipient(0x5Fb9d2d6aa4c437eB107e988Dfc1A4387E938743, 9.732*1000)); //ArtKovshuk
        Recipients.push(Recipient(0x042FCAbD62bc0Fd0424Ef4F11F872052402CF412, 6.488*1000)); //Easondicent

        //Facebook
        Recipients.push(Recipient(0xBf936c8fd9a17bb0141a4a71aF6116Dd6F3B7C69, 38.4*1000)); //kripterst
        Recipients.push(Recipient(0x899381758746e07C6074a46C6B54d0BB312ea181, 25.6*1000)); //ojosamsom
        Recipients.push(Recipient(0x10858719531D898EcdAe012b51EAe1CBADf5EB99, 38.4*1000)); //Leodh
        Recipients.push(Recipient(0x03c041db905E0f8dE0b7eCaBb92c775E2b8dE7ff, 38.4*1000)); //dianepot
        Recipients.push(Recipient(0xFd23501DfF368b3aD756350fF9B18e6afB638afD, 38.4*1000)); //joykulot
        Recipients.push(Recipient(0x5Cae2473E1A7082d10637183898a931bC8A89cf6, 0*1000)); //Sokerz
        Recipients.push(Recipient(0x73fC0cBbBFD338ac5c205Fec7BC7959E12f8f74a, 38.4*1000)); //toretsk
        Recipients.push(Recipient(0x3A98dAa3dAa51E3B2266A776A5a7E8dc8B735500, 38.4*1000)); //simantobd
        Recipients.push(Recipient(0x58ac92F7D03dcd53eA369BFCAD80933d165BdcD5, 25.6*1000)); //Nemoy
        Recipients.push(Recipient(0x3Aa38e61ae85861ABD69690bEb4DF7040176C457, 25.6*1000)); //Kacang_Atom
        Recipients.push(Recipient(0xFB407B2C1A3a7185244039D89B999499ff6e0a48, 38.4*1000)); //Omooba098
        Recipients.push(Recipient(0x8EA5697B0555b0Ed91D3f45741d7abe97D8Ca2Df, 38.4*1000)); //alisaddt
        Recipients.push(Recipient(0xd90dCe04ea14D33F91fBc114451d881Be8663148, 38.4*1000)); //Dcoollakky247
        Recipients.push(Recipient(0x1A441cDEA47f1D0f704f2b26C5F620B46292DBBD, 12.8*1000)); //@Kripto-12
        Recipients.push(Recipient(0xa50bF945C446f774A2e2d47c129df061b874dc75, 38.4*1000)); //AnalynCadiz
        Recipients.push(Recipient(0x104Ae004Db9ec29e0789F628B11698290Ad73B79, 0*1000)); //Emilere
        Recipients.push(Recipient(0x0649c8c75aea1148b3e51b5f7189ff49ff4b3fd5, 38.4*1000)); //Ivanchailebedev
        Recipients.push(Recipient(0x1322A96779F4Acc28c058579BD712A9CeFd0c835, 38.4*1000)); //bitcoinbaba01
        Recipients.push(Recipient(0x497e11294BE1288d6101F1BdAaaFF03363a39e80, 25.6*1000)); //Bramadi
        Recipients.push(Recipient(0xaa3165Bc7061edA047dd38F64C190d6F3c1Cc0A2, 38.4*1000)); //AlenaShedin
        Recipients.push(Recipient(0xe0bBd84c96042cD7c9f3e52310BeEd1c15621a45, 38.4*1000)); //yepik
        Recipients.push(Recipient(0xF09e67698bacB9Aad5d9C825FF61a3A1E55568C6, 0*1000)); //katrusia
        Recipients.push(Recipient(0xbaBee887566224FB964273Ea117BD0c752Fb9D04, 38.4*1000)); //KriptaBiznes
        Recipients.push(Recipient(0xd6C6Aa53C1707cBC662a2b79dF54921e711271dE, 38.4*1000)); //Enijesiku Sulaimom
        Recipients.push(Recipient(0xd3199a1B853286d0f64588CC216318fCC24aCeF0, 38.4*1000)); //Zavalishin
        Recipients.push(Recipient(0xe189B1950B9Af7D6cd0B48148e68865823402A71, 38.4*1000)); //Alexandr Shenkarenko
        Recipients.push(Recipient(0xA04a151Eb04ba070e776AE011a85deC8F5030101, 38.4*1000)); //Heopu
        Recipients.push(Recipient(0x160BA5dC811fc91D0D456bc51F5ff6de9C4dfd81, 38.4*1000)); //toshiik
        Recipients.push(Recipient(0x02CFa0abc6c05de03B2E03b2Ce9d4B4554cE8366, 38.4*1000)); //lysenko_y
        Recipients.push(Recipient(0xC2775F355F3377293Ffc6CE11ab0841Ce183A44F, 25.6*1000)); //KINGCHACHA1
        Recipients.push(Recipient(0xe687AE08bea9040DB3c6Ba1F6B92A7C8D7ec8DE1, 38.4*1000)); //Kavun_L
        Recipients.push(Recipient(0x7Cf5762F8caeF8d3F04376efaCaFC2100510BCD3, 38.4*1000)); //hoangtubia
        Recipients.push(Recipient(0xA850a2Df4245982901Ff86b65dfC24110EEC7Cca, 38.4*1000)); //boynton2857dina557
        Recipients.push(Recipient(0xAC360B63d7c00D7A069Cf9ea6Bbd48CCdfB71ABF, 38.4*1000)); //chicipuci
        Recipients.push(Recipient(0xAc9e3B74135522CC45523F63F0bB53Cfa45cb1CF, 38.4*1000)); //MedvedevVasilyS
        Recipients.push(Recipient(0xe633b21dc49e06C731600038e9d6D3bA25DcE622, 38.4*1000)); //MD Milon
        Recipients.push(Recipient(0xd3ee5Bd83dCB85060adB7F45D87dAAFCF96B2f09, 38.4*1000)); //lider777
        Recipients.push(Recipient(0xf3160885190621e460C62229223f39a0f13E64E2, 38.4*1000)); //Reonsver
        Recipients.push(Recipient(0x6a261D32156A26086C3cF77cF23a9e849D7ac44f, 25.6*1000)); //Otard
        Recipients.push(Recipient(0xee98a8C53DBcc402BD3a5627849FFc7aEBd8BEfE, 0*1000)); //Nikos_Anasias
        Recipients.push(Recipient(0x127962b9b5da42856d74ee9d923305dcfae277b8, 38.4*1000)); //slendy1830
        Recipients.push(Recipient(0x6ab75e2577Ced422F57C826Ef60f9F538d16C608, 25.6*1000)); //watukpilek
        Recipients.push(Recipient(0x6DA6D6F50738A6fECa3279604D4d6da3c937Db71, 25.6*1000)); //hypnosse
        Recipients.push(Recipient(0x007Cc7Ff83a9bDd8C1d6D31C32Cc69c11fc1320C, 12.8*1000)); //bioss82
        Recipients.push(Recipient(0x06cB7C14Eef711Da4D4a4CD9042Bb01E27b7Bcef, 12.8*1000)); //Bukumm
        Recipients.push(Recipient(0xd6C93A3148140dB082a17C2Bb100E66acaAAEE0b, 38.4*1000)); //Awaknow
        Recipients.push(Recipient(0x44a46A6FeB83e787a80e5e86a41e3806D1B778dD, 38.4*1000)); //rexuss
        Recipients.push(Recipient(0xCDa7A32b1BD9539a509aEAA764E7559219D28aD7, 38.4*1000)); //Maykl
        Recipients.push(Recipient(0x6bc5759f15FD5f13Edda81743565e893506b4374, 38.4*1000)); //Ruslan84
        Recipients.push(Recipient(0x64aA278Fdc9AC0BC4f6E3a0365753368AA467DBD, 38.4*1000)); //klinohek
        Recipients.push(Recipient(0x2Bb351e65Ce7875f1586d80C649AB68c1FaF95eD, 38.4*1000)); //jannatul ferdous
        Recipients.push(Recipient(0x58ac92F7D03dcd53eA369BFCAD80933d165BdcD5, 38.4*1000)); //Nemoy
        Recipients.push(Recipient(0x58ac92F7D03dcd53eA369BFCAD80933d165BdcD5, 38.4*1000)); //Nemoy
        Recipients.push(Recipient(0x2c4F8E85D1556Af6DCeF8b197681F057432e62a0, 38.4*1000)); //dinom23
        Recipients.push(Recipient(0x616c9eBfaeE942e260f32D64ff6D4380BD619E94, 38.4*1000)); //bboy22
        Recipients.push(Recipient(0x3374f7Fc9846255f2E154b6C6CB5bC97C15205C4, 38.4*1000)); //redwhite037
        Recipients.push(Recipient(0x133e9693907A85230F997daDF3fF219e4946b1CE, 38.4*1000)); //Robert De Crypto
        Recipients.push(Recipient(0x098E414537A78c322C7FfbB66068e3411B4b981A, 38.4*1000)); //maxinvestor
        Recipients.push(Recipient(0x7c893f5d3edc9671bc682db9df3ce993c2e520ff, 38.4*1000)); //shilpy275
        Recipients.push(Recipient(0x6Cd20F597DdcB3995A66DE7416D159A88a980367, 38.4*1000)); //harvestnewcoin
        Recipients.push(Recipient(0x7794b57d50Ef4aeDE46D0E245C4A44CE4Ed011A0, 25.6*1000)); //Tamtrang
        Recipients.push(Recipient(0x885eD6bA252F7Db8Dcd445f03FA5007FC3679797, 38.4*1000)); //Thai Fx
        Recipients.push(Recipient(0xc38a4feFC0D2B94686F4E512952e8FB985FeA1B0, 38.4*1000)); //i7claufe
        Recipients.push(Recipient(0xA98d89899CB5498a5ae27430C488fd3dC8d7fce4, 38.4*1000)); //bluedragon11
        Recipients.push(Recipient(0x74A659A42AD88f335cC35D813C8fe7bBF7e44A1e, 12.8*1000)); //airdropwwani
        Recipients.push(Recipient(0x7aF4Cb205142a4faC2c100f79258dB06A7B31C24, 38.4*1000)); //Stug
        Recipients.push(Recipient(0x7E7008aC0166cb884AcF861D9749566242AFD105, 38.4*1000)); //Cryptomania098
        Recipients.push(Recipient(0x0D554C6ee2a2f31441080f23ba6D36B845949d23, 38.4*1000)); //secret0x
        Recipients.push(Recipient(0xA8fa22eD4932fd08B6AA096657250C19ec0d8631, 38.4*1000)); //Paha87
        Recipients.push(Recipient(0x59B53cc87248DEFb36b600A0895372dD7908813b, 25.6*1000)); //unreborn
        //Recipients.push(Recipient(, 0)); //
        Recipients.push(Recipient(0x281c54D619A63E2AF1b697E599ff42Ac37839b3F, 28.8*1000)); //Guli
        Recipients.push(Recipient(0xd76123271d861Dc7a7ab414deC10EeDC5577B946, 28.8*1000)); //Umar
        Recipients.push(Recipient(0x1a60960e393692359b89E0C45dd1EE505b01e54a, 28.8*1000)); //aji567
        Recipients.push(Recipient(0x7bEd54d387aD18b98FF09A7428E533Dc2ADB8734, 28.8*1000)); //Bajiguer
        Recipients.push(Recipient(0x9Cc826774Ca41A933573EF65bd7123a3FCF92ae1, 38.4*1000)); //ElenaNem
        Recipients.push(Recipient(0xf7d2F963bed1bEe356a5Ad238831B75988Bda7bc, 28.8*1000)); //Maxim82
        Recipients.push(Recipient(0x0595F70F09dB2e18F99D2408883453876C1786eE, 28.8*1000)); //boexs231
        Recipients.push(Recipient(0xf7C92c8206784Ef6c335965B33a4699C8B34C048, 28.8*1000)); //gramton001
        Recipients.push(Recipient(0x93f1F825DC6e653f4e0E90D374f093B69163423F, 28.8*1000)); //Saifullahbabu
        Recipients.push(Recipient(0xaa68eCa20F3AadaBFCACF44228962Fbd723e1e01, 9.6*1000)); //Corvin17
        Recipients.push(Recipient(0x0658667E721123b31b480AfD32287055399cdceC, 28.8*1000)); //YurLinOne
        Recipients.push(Recipient(0x4f7ff8591A549790cD575A32934eC6e9D11a9524, 9.6*1000)); //herurist
        Recipients.push(Recipient(0x8e779Cdef8bb43178b018101f54aC3230Ec19495, 28.8*1000)); //IciCestMathers
        Recipients.push(Recipient(0x0d9E1e943272CFCdB4cC83712650683A740a38f2, 28.8*1000)); //Anam17
        Recipients.push(Recipient(0x0A8223852ce225eA5656bEc7Eb8a071208dA866D, 28.8*1000)); //Starlaaa87
        Recipients.push(Recipient(0x47ea3d8D172790343b60f9F16143bD329DdCC392, 28.8*1000)); //artleks
        Recipients.push(Recipient(0x327052fc98E33480E9dc9Da40E40F5df2E426d9B, 28.8*1000)); //CalvinTran1990
        Recipients.push(Recipient(0x062138ec5295115C520C5af226c2F2632567eFf2, 28.8*1000)); //sonali2015
        Recipients.push(Recipient(0x1c3207E588518EEb560d123b3b9b672DF3Cc3d4e, 28.8*1000)); //moh ridwan
        Recipients.push(Recipient(0xE457d22238c5Cb530542938B95Be758ed312A548, 28.8*1000)); //cryptodrops954
        Recipients.push(Recipient(0x75F3eD5f2080A1b8bC29d8282e63aa206903115f, 19.2*1000)); //Dek maria
        Recipients.push(Recipient(0x2873051B846222436DbD000DbFaa9a63b63966b4, 9.6*1000)); //Sasakinto,
        Recipients.push(Recipient(0x7d4ce22321121A9d0ebfc214E1CfB59125Cf385C, 28.8*1000)); //habibsir
        Recipients.push(Recipient(0xA0676eDd171904F489D7E76B554E11E0167397C3, 19.2*1000)); //hidayatgp1
        Recipients.push(Recipient(0xBe52e64Fb68BE2AC3933F96962a234fcE75801dC, 28.8*1000)); //nilbtc4555
        Recipients.push(Recipient(0x0E6CB35Dc823f0cdfbf4801Bbd8fa599B7ee0aD6, 28.8*1000)); //ajaxad
        Recipients.push(Recipient(0x6530055B5BF2500Bc3E0F62c28C76E8E80cd08Dc, 28.8*1000)); //1Nebonad1golovoy1
        Recipients.push(Recipient(0x6a261D32156A26086C3cF77cF23a9e849D7ac44f, 19.2*1000)); //Otard
        Recipients.push(Recipient(0x869F7Da3d2dbA379e0060319bB5F4f8B3056c6E6, 28.8*1000)); //Kotofeyka
        Recipients.push(Recipient(0xbE391439532cAce97F4A767b1e65068c969ec049, 28.8*1000)); //lahirud
        Recipients.push(Recipient(0x61E97eF47DdE9a6ACeB59710ecAF42473dd61A98, 28.8*1000)); //ranna1996
        Recipients.push(Recipient(0x2F590c58C8e3047166F3Bb30242CD61dE4a9e056, 19.2*1000)); //giayen2018
        Recipients.push(Recipient(0x1b44Fb33917Aa102240f6E4109F6094Ad9943Ff8, 19.2*1000)); //Ama66
        Recipients.push(Recipient(0x609D59802E42227942CECa5B421D0d3141CD0969, 28.8*1000)); //kotakamal
        Recipients.push(Recipient(0x8c117d726bb5109CBbC96B1Ae2B30BBfC65A20f4, 28.8*1000)); //MargoIvanova
        Recipients.push(Recipient(0x9BDbEb5F6E59dd471Bc296B97266D3Ee634B7c7e, 28.8*1000)); //ironman68
        Recipients.push(Recipient(0x52ac2f74e5F7920250d30FBA4131b8c4e6f4597A, 28.8*1000)); //oooecy
        Recipients.push(Recipient(0x6c248f43AE613b42448d4EB178E59b06C24F2c83, 28.8*1000)); //sworker
        Recipients.push(Recipient(0xb1240ede6b2a05d257c5738d983fd02a49b4a207, 19.2*1000)); //Exousia
        Recipients.push(Recipient(0x78ca7f56afe99bd3be9a1cfeb638fac1dcfd4f29, 28.8*1000)); //Nimshack
        Recipients.push(Recipient(0xeC5923Cd130647A70F0ca7De99047b464b19C777, 28.8*1000)); //Chorohon
        Recipients.push(Recipient(0xF33DF991c9dEA4c8c79146d8fbA3583b00FBE169, 28.8*1000)); //ukavinda94
        Recipients.push(Recipient(0xb5372D530DFB547Adb2e04cbCEa895ceb739B741, 28.8*1000)); //dekcutmanis
        Recipients.push(Recipient(0x57467D4CB04dB2B235de1277aEf04Bb1335CA73b, 28.8*1000)); //Bohitek97
        Recipients.push(Recipient(0x7cD7b91cEd906FE622902ec9870809FbaC87277F, 19.2*1000)); //Bitum
        Recipients.push(Recipient(0x3F7C14E402fcC3864D6e1aE1C4747ff1805D0512, 19.2*1000)); //daries91
        Recipients.push(Recipient(0x6c71787bAf6a240CD597B0CFb7D0047fA37d08fE, 19.2*1000)); //Tnt1971
        Recipients.push(Recipient(0xFeb9456EE36a429D4Cc028F112150f0a8914295c, 19.2*1000)); //segwlala
        Recipients.push(Recipient(0x0018D33F354b48a20963A0F215D2C136D9dD1812, 19.2*1000)); //sureblinks
        Recipients.push(Recipient(0xe3830854d55B147EA2ff05989b27Ff5388802b8E, 19.2*1000)); //anik_widya
        Recipients.push(Recipient(0x2793b5e7202C44cabacE43F928643782a782F021, 38.4*1000)); //Dutchkay
        Recipients.push(Recipient(0xbE391439532cAce97F4A767b1e65068c969ec049, 28.8*1000)); //lahirud
        Recipients.push(Recipient(0x56A660EA3DC28Db18197185a78b74c7507867740, 28.8*1000)); //artiommatvienko
        Recipients.push(Recipient(0xFeF08427A0d51d853294Dd40F2f101e02F80901B, 19.2*1000)); //Dharmarathna
        Recipients.push(Recipient(0x9432Cd22E60986e2371e512Ff566054b2A607196, 28.8*1000)); //anjubaba
        Recipients.push(Recipient(0x8E773098B5989A643464F3113491bE409EF19195, 19.2*1000)); //faiqfakhrim
        Recipients.push(Recipient(0x825291DCFfF7F2f6ADF4943Cea4877afa900028E, 9.6*1000)); //Akhat43
        Recipients.push(Recipient(0x1ff3E094c1c6ed9228079E5cb60a096842157F52, 9.6*1000)); //Neshtonevecno
        //Recipients.push(Recipient(https://mobile.twitter.com/Bojessubejo, 6.4)); //Bejo0908
        Recipients.push(Recipient(0x8eB173c458A505a22CaAB0Ee0209751ad91Bee0a, 6.4*1000)); //pacho08
        Recipients.push(Recipient(0xf935847A822B1f5937c0d3fFeBf3675Fd9945933, 9.6*1000)); //opaopa33
        Recipients.push(Recipient(0xF68E5086078A84233117183A84cb044021A8144A, 9.6*1000)); //Sentoy
        Recipients.push(Recipient(0x283b2587C57A7c386cD08c9c69ca1e8f614e38EE, 9.6*1000)); //maratmans1991
        Recipients.push(Recipient(0x17A7d45565B76D56C31E3B2f9F469500F046132c, 19.2*1000)); //jahebau
        Recipients.push(Recipient(0x8b683d22990f2AA6baa8d59300e984F717602B23, 9.6*1000)); //Ahsanjoy
        Recipients.push(Recipient(0x40249ee8b64f91fA7e42dc93FFa16df76938D0aC, 9.6*1000)); //nfc69
        Recipients.push(Recipient(0x0e7B747d118e0D39d6abe64ee2DaF00560BCE16a, 9.6*1000)); //Febrisedenk
        Recipients.push(Recipient(0x1ab4a204d582FE1aa7DA8450E58D04435073737F, 9.6*1000)); //SochiStarS
        Recipients.push(Recipient(0x135271B6843D305Aca4F77A81f87B0eA863Ae555, 9.6*1000)); //Mehejabin
        Recipients.push(Recipient(0x6E919e099bc33F9e2F4699c0b0966185B4866EBc, 19.2*1000)); //FHD2000
        Recipients.push(Recipient(0xf5a5BDF579Cda45810b44Db0742b2Ff58dc05c75, 3.2*1000)); //Chibongvdg
        Recipients.push(Recipient(0x97681fC3cDb2D3E914c089A7Cf644B2eD72CE4F4, 9.6*1000)); //Decap
        Recipients.push(Recipient(0xF355163a83A223C0ED55bf8481b4f93D019DA657, 9.6*1000)); //lakmali123
        Recipients.push(Recipient(0xAf6C0481bfa877deC0913b3987C4807aC42664bD, 6.4*1000)); //NightlessCity
        Recipients.push(Recipient(0x941256b482832DDbcfdA5af7D7Fe9F423F09A3a8, 9.6*1000)); //anjuara29
        Recipients.push(Recipient(0xa157B0019710b79336D584a698F8f26D2b8C6a56, 19.2*1000)); //CripTanya
        Recipients.push(Recipient(0x0cAa11412D363A502d14FAFdb480Eca457c15F38, 19.2*1000)); //vera555
        Recipients.push(Recipient(0x6A87506EFd206e8Ce3648813725101CA89DB49dC, 9.6*1000)); //dede_elda
        Recipients.push(Recipient(0xDB55Be14A03F3205Fed2D785E52cb422ec74980D, 6.4*1000)); //Aiyoky
        Recipients.push(Recipient(0xe7195878C7d5840332f08B9496C689165745DF20, 9.6*1000)); //akterjuli
        Recipients.push(Recipient(0x5Fb9d2d6aa4c437eB107e988Dfc1A4387E938743, 6.4*1000)); //ArtKovshuk


        //telegram
        Recipients.push(Recipient(0xfCFb500DA070fb28F19Cc04424fCE203A92Bc69E, 56.604*1000)); //RammyGold
        Recipients.push(Recipient(0x06cB7C14Eef711Da4D4a4CD9042Bb01E27b7Bcef, 56.604*1000)); //Andri_winanda86
        Recipients.push(Recipient(0xBae439669c1b3F6eA1337382c2baf85bcF8d7F60, 56.604*1000)); //Temibest2
        Recipients.push(Recipient(0xe697bb1eA3a54516Fb352198719c2fB8f65241df, 75.472*1000)); //Skyyboat
        //Recipients.push(Recipient(-, 75.472)); //LenkaIvanova
        Recipients.push(Recipient(0x9e54390463b81A9aA084D2AceE0f48c9b414FD3F, 75.472*1000)); //BtcEthTon
        Recipients.push(Recipient(0x59B53cc87248DEFb36b600A0895372dD7908813b, 56.604*1000)); //Yndra04
        //Recipients.push(Recipient(-, 56.604)); //krspec
        Recipients.push(Recipient(0x64aA278Fdc9AC0BC4f6E3a0365753368AA467DBD, 56.604*1000)); //klinklinov
        Recipients.push(Recipient(0x497e11294BE1288d6101F1BdAaaFF03363a39e80, 75.472*1000)); //bram29
        //Recipients.push(Recipient(-, 56.604)); //Otard96
        Recipients.push(Recipient(0x7E7008aC0166cb884AcF861D9749566242AFD105, 56.604*1000)); //ismailoladipo
        Recipients.push(Recipient(0xa126a1016815fC3Fe6E7081Bd173FD60624E904E, 56.604*1000)); //Mhizsaha
        Recipients.push(Recipient(0xd6C6Aa53C1707cBC662a2b79dF54921e711271dE, 75.472*1000)); //Enijesiku
        Recipients.push(Recipient(0xf854Cb8bFA8D5D63Fe22902E663288f14a61e851, 56.604*1000)); //Honitesiwaju
        Recipients.push(Recipient(0xab33c3ddCbCF1b4b5cfdE8E2Ed239FE0A9Ce1D79, 56.604*1000)); //Rammybest
        Recipients.push(Recipient(0xFB407B2C1A3a7185244039D89B999499ff6e0a48, 56.604*1000)); //Daprince098
        //Recipients.push(Recipient(-, 56.604)); //WesGOA
        //Recipients.push(Recipient(-, 56.604)); //ji567
        //Recipients.push(Recipient(-, 56.604)); //No telegram username
        Recipients.push(Recipient(0x7aF4Cb205142a4faC2c100f79258dB06A7B31C24, 75.472*1000)); //NgStug
        Recipients.push(Recipient(0x6ab75e2577Ced422F57C826Ef60f9F538d16C608, 75.472*1000)); //Phin27
        Recipients.push(Recipient(0xAf6C0481bfa877deC0913b3987C4807aC42664bD, 18.868*1000)); //quelra88
        Recipients.push(Recipient(0x338EDcC1943F78797fB5f5F1A5d17ae3788Ce060, 75.472*1000)); //Oasis17
        //Recipients.push(Recipient(-, 56.604)); //Starlaaa87
        //Recipients.push(Recipient(-, 37.736)); //FXThai
        //Recipients.push(Recipient(-, 18.868)); //Chibongvdg
        //Recipients.push(Recipient(-, 37.736)); //Marvelousz
        //Recipients.push(Recipient(-, 37.736)); //dedenhs21
        Recipients.push(Recipient(0xadee0328b94f5f70431bc0ec5792b9292185eba6, 37.736*1000)); //No telegram username
        Recipients.push(Recipient(0x8e779Cdef8bb43178b018101f54aC3230Ec19495, 56.604*1000)); //IciCestMathers
        //Recipients.push(Recipient(-, 37.736)); //selim121
        Recipients.push(Recipient(0x6E919e099bc33F9e2F4699c0b0966185B4866EBc, 18.868*1000)); //FHD2000
        //Recipients.push(Recipient(-, 37.736)); //lahiru948
        //Recipients.push(Recipient(-, 18.868)); //Cryptoqueenkim
        Recipients.push(Recipient(0x9C8a920d298B8A9Dac3ACb471a60Dc63403f9327, 37.736*1000)); //Musiliu
       // Recipients.push(Recipient(-, 18.868)); //bodrexx
        Recipients.push(Recipient(0x127962b9b5da42856d74ee9d923305dcfae277b8, 18.868*1000)); //johnsmike5
        Recipients.push(Recipient(0xaa68eCa20F3AadaBFCACF44228962Fbd723e1e01, 37.736*1000)); //mcfr3dom
        //Recipients.push(Recipient(-, 18.868)); //TomPluz
    }
    
    /*
    function receiveApproval(address originalSender, uint256 _value, address contractAddress, bytes _extraData)
    public returns(bool success) {
        tokens[contractAddress] += _value;
        Token caller = Token(contractAddress);
        if (!caller.transferFrom(originalSender, this, _value)) {revert();}
        return true;
    }
*/
    function withdrawToken(Token tokenAddress, address _to, uint _value) public returns (bool success) {
        require(msg.sender == owner);
        tokenAddress.transfer(_to, _value);
        return true;
    }

    function withdrawEther() public returns(bool success){
        require(msg.sender == owner);
        address dalcDistrContractAddr = this;
        owner.transfer(dalcDistrContractAddr.balance);
        return true;
    }
    
    function addRecipient(address _recipient, uint value) public returns(bool success) {
        Recipients.push(Recipient(_recipient, value));
        return true;
    }
    
    function getTotalAmount(Token tokenAddress) view public returns(uint amnt){
        require(msg.sender == owner);
        uint totalAmount = 0;
        uint k = 0;
        while (k <= Recipients.length-1) {
            totalAmount += (Recipients[k].tokenValue * 10 ** uint(tokenAddress.decimals())) / 1000;
            k++;
        }
        return totalAmount;
    }

    function distribute(Token tokenAddress) public returns(bool success){
        require(msg.sender == owner);
        uint totalAmount = 0;
        uint j = 0;
        while (j <= Recipients.length-1) {
            totalAmount += (Recipients[j].tokenValue * 10 ** uint(tokenAddress.decimals())) / 1000;
            j++;
        }
        address dalcDistrContractAddr = this;
        require(tokenAddress.balanceOf(dalcDistrContractAddr) >= totalAmount);
        
        
        uint i = 0;
        while (i <= Recipients.length-1) {
            address _addr = Recipients[i].recipientAddress;
            uint value = (Recipients[i].tokenValue * 10 ** uint(tokenAddress.decimals())) / 1000;
            tokenAddress.transfer(_addr, value);
            i++;
        }
        return true;
    }

    function tokenBalance(Token tokenAddress) public view returns(uint value) {
        address dalcDistrContractAddr = this;
        return tokenAddress.balanceOf(dalcDistrContractAddr);
    }

    function destroy (address _to) public {
        require(msg.sender == owner);
        selfdestruct(_to);
    }
}