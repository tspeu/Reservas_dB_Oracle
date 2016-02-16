set define off 
set verify off
set serveroutput on size 1000000
set feedback off
WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK
begin wwv_flow.g_import_in_progress := true; end; 
/
 
prompt  Set Credentials...
 
begin
 
  -- Assumes you are running the script connected to sqlplus as the owner (parsing schema) of the application or as the product schema.
  wwv_flow_api.set_security_group_id(p_security_group_id=>8545522868426543);
 
end;
/

begin wwv_flow.g_import_in_progress := true; end;
/
begin 

select value into wwv_flow_api.g_nls_numeric_chars from nls_session_parameters where parameter='NLS_NUMERIC_CHARACTERS';

end;

/
begin execute immediate 'alter session set nls_numeric_characters=''.,''';

end;

/
begin wwv_flow.g_browser_language := 'es'; end;
/
prompt  Check Compatibility...
 
begin
 
-- This date identifies the minimum version required to import this file.
wwv_flow_api.set_version(p_version_yyyy_mm_dd=>'2005.05.01');
 
end;
/

prompt  Set Application ID...
 
begin
 
   -- SET APPLICATION ID
   wwv_flow.g_flow_id := 105;
   wwv_flow_api.g_id_offset := 0;
null;
 
end;
/

---------------------------------------
prompt  ...Image Repository
set linesize 250
--
 
begin
 
    wwv_flow_image_api.remove_image(
      p_image_name   => 'logo.jpg', 
      p_flow_id      => 105); 
   null;
 
end;
/

begin
    wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
    wwv_flow_image_api.g_varchar2_table(1) := 'FFD8FFE000104A46494600010101006000600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FFDB0043010909090C0B0C';
    wwv_flow_image_api.g_varchar2_table(2) := '180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FFC00011080072013303012200021101031101FFC4001F00000105010101010101000000000000000001';
    wwv_flow_image_api.g_varchar2_table(3) := '02030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A53545556';
    wwv_flow_image_api.g_varchar2_table(4) := '5758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F010003';
    wwv_flow_image_api.g_varchar2_table(5) := '0101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35';
    wwv_flow_image_api.g_varchar2_table(6) := '363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EA';
    wwv_flow_image_api.g_varchar2_table(7) := 'F2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F41F11788AEE7D41F4FD3DD92356D84C7C3C8E3B03D4608C71D79F5A8ADBC1B712421AE2E92273FC0A9BF1F8E7AFB51E0EB6492EEE2E1865E250173EF9CFBE703F9D7655F3B83C1AC7A789C4DD';
    wwv_flow_image_api.g_varchar2_table(8) := 'DDE8AFA247BB8AC53C13587C3D95B776D5B3926F058552CDA880A064930F4FFC7AA9FF0060E99FF430DA7FE3BFFC5557F88FE23922B66D12C448D34A3FD25954FCA8790B9F7FE5F5AF2E5B79FF00E784BFF7ECFF00852AF83C0D39F2A85FE6FF00CCE8C3';
    wwv_flow_image_api.g_varchar2_table(9) := '55C6D5A7CF29DBE4BFC8F5AFEC1D33FE861B4FFC77FF008AA3FB074CFF00A186D3FF001DFF00E2ABCA56DE6FF9E127FDFB3FFC4D4AB04BFF003C24FF00BF67FF0089ACBEAF83FF009F7F8BFF00337BE2BFE7E7E0BFC8F51FEC1D33FE861B4FFC77FF008A';
    wwv_flow_image_api.g_varchar2_table(10) := 'A3FB074CFF00A186D3FF001DFF00E2ABCC96093FE7849FF7E9BFF88A95617FF9E327FDFA6FFE22ABEAB83FF9F7F8BFF3279B15FF003F3F05FE47A47F60E99FF430DA7FE3BFFC551FD83A67FD0C369FF8EFFF00155E75E4B63FD449FF007E9BFF008DD31A';
    wwv_flow_image_api.g_varchar2_table(11) := '26FF009E2FFF007E9BFF0088A7F55C1FFCFBFC5FF98B9F15FF003F3F05FE47A47F60E99FF430DA7FE3BFFC551FD83A67FD0C369FF8EFFF00155E62D137FCF27FFBF67FF88A89A36FF9E6DFF7C1FF00E2697D5707FF003EFF0017FE63E6C57FCFCFC17F91';
    wwv_flow_image_api.g_varchar2_table(12) := 'EA7FD83A67FD0C369FF8EFFF001547F60E99FF00430DA7FE3BFF00C55793B237F71BFEF93FE151329FEE9FCBFF00AD4BEAD83FF9F7F8BFF32BFDABFE7EFE0BFC8F685F060750CBA90652320AC39047FDF54BFF000851FF00A087FE41FF00ECAB1BE1A789';
    wwv_flow_image_api.g_varchar2_table(13) := '4CF0FF0061DDB1F32205AD98F74EEBF876F6FA57A2D77D2CAF03520A4A1F8BFF0033CAAF986368D47094BF05FE4727FF000851FF00A087FE41FF00ECA8FF008428FF00D043FF0020FF00F655D6515AFF006360BF93F17FE665FDAB8BFE6FC17F91C9FF00';
    wwv_flow_image_api.g_varchar2_table(14) := 'C2147FE821FF00907FFB2A3FE10A3FF410FF00C83FFD95759451FD8D82FE4FC5FF00987F6AE2FF009BF05FE4727FF0851FFA087FE41FFECA8FF8428FFD043FF20FFF00655D65147F6360BF93F17FE61FDAB8BFE6FC17F91C9FFC2147FE821FF907FF00B2';
    wwv_flow_image_api.g_varchar2_table(15) := 'A3FE10A3FF00410FFC83FF00D95759451FD8D82FE4FC5FF987F6AE2FF9BF05FE4727FF000851FF00A087FE41FF00ECA8FF008428FF00D043FF0020FF00F655D65147F6360BF93F17FE61FDAB8BFE6FC17F91C9FF00C2147FE821FF00907FFB2A3FE10A3F';
    wwv_flow_image_api.g_varchar2_table(16) := 'F410FF00C83FFD95759451FD8D82FE4FC5FF00987F6AE2FF009BF05FE4727FF0851FFA087FE41FFECA8FF8428FFD043FF20FFF00655D65147F6360BF93F17FE61FDAB8BFE6FC17F91C9FFC2147FE821FF907FF00B2A3FE10A3FF00410FFC83FF00D95759';
    wwv_flow_image_api.g_varchar2_table(17) := '451FD8D82FE4FC5FF987F6AE2FF9BF05FE4727FF000851FF00A087FE41FF00ECA8FF008428FF00D043FF0020FF00F655D65147F6360BF93F17FE61FDAB8BFE6FC17F91C9FF00C2147FE821FF00907FFB2A3FE10A3FF410FF00C83FFD95759451FD8D82FE';
    wwv_flow_image_api.g_varchar2_table(18) := '4FC5FF00987F6AE2FF009BF05FE471F2F84EF6D089AC6F374AA09E018DBE8A7273DFB8ADAF0B6BF73A8CB2D85EA13711297F33685C8040208EC467FCF7D6AE67C31FF2396A78FEECBFFA305734B0D1C16269BA0DA52766B746D1C44B1742A7B649B8ABA7';
    wwv_flow_image_api.g_varchar2_table(19) := 'D4EDB3452D15EE1E39C1782BFE5FBFED9FFECD5D61AE4FC15FF2FDFF006CFF00F66AEADB8535E664DFEE50F9FE6CF4736FF7B97CBF2479BF88DFFE2A7BFC1ED1FF00E802B2CCAE3A1ABBAF3EFF00125F9F741FF8E8ACD635E0E33FDE27EA7D0613F810F4';
    wwv_flow_image_api.g_varchar2_table(20) := '438DCCA3A37E94D37B38E8FF00A544C6A2635926CDDC576273A8DC8E920FFBE4534EAD783A4A3FEF915558D44C6B45297725C23D8BADAD5F74F387FDF22A17D5EF4F5947FDF22AA31A898D68A72EE2F670EC587D4EECF5907FDF22A07D42E0F571F90A85';
    wwv_flow_image_api.g_varchar2_table(21) := '8D44C6AD37DC5CB1EC48F7731EADFA557799CF53431A898D52B8591D37801F1E33B427FBB27FE826BDAC1C8AF09F05CBE578AED1BFDE1FF8E9AF7488EE8C1F6AF6F2FF00E13F53E7B35FE32F41F58BE21F16685E158229B5AD463B4599B6C6A559DDBD48';
    wwv_flow_image_api.g_varchar2_table(22) := '5505B03B9C60647A8ADAFA9007A9AF21D1BC4BA55BDEC9E35D5EDEF6F756D666961D1ACED6DDA6956D626D9B631F7413CB37233CE3A9CF6F5B1E6F4B9E9FA3EB7A678834F5BED26FA1BBB66E37C4D9DA700ED61D55B047070466AFD79E695F11B408EDF5';
    wwv_flow_image_api.g_varchar2_table(23) := 'F920F0FEA7A6369EBF6BBD8EE2C9202F2BE02821589F31CE31BBAD43A578D7C50DE2DB0D2B53B7D0A4FB631F32C34F96592EEC5719DD39FB836E403D324F1E955BBB22765767A4D15C06A5E3BD56F35CD5F42F0BE99673DE69D116926BEB9DB975C12A90';
    wwv_flow_image_api.g_varchar2_table(24) := '283238C1C06E064F5E99C1F89175E2DD43E190BE96DF4DB4B192CADA5D42199254BA8E7322E420E8173B786E473493BD9FA1496B63D5EEAEADEC6DA4B9BBB88ADEDE31B9E595C22A8F524F02A5565750CAC1948C820E4115C1788355F1168DF0E357BEF1';
    wwv_flow_image_api.g_varchar2_table(25) := '2D9E857B768C8B1DB5BC723DBC88CE8B8757E49E5BDBA5687897C45AA59EAF65E1BF0D595ACDAB5C406E0B5D96582DA053B77385E4E4E5401DE8FEBF5256A9327F17F8DEC7C2474F824825BDBFBFB98E082CEDCAF98C19802D827B741EAC40E3923A7AF3';
    wwv_flow_image_api.g_varchar2_table(26) := '47D6A45B0D775CD5F45D3078C3C310BC22645631323AEF464270DB48CF19C805B18DE6934BF1E78A2EA4D0754BDD1AC6D741D5AEA3B3894C8E6EB73A9DB2FF00742120E075C7B1068DDDBD3F106ECAFEBF81E9948582A96638006493DA9B34D1DB4124F3';
    wwv_flow_image_api.g_varchar2_table(27) := '3848A242EEE7A2A81927F2AF3B93C47E3AD53489B5ED3748D1E3D0DA269A1B6BB9A41772C38C86C8F914B0E403D3DFAD4B76BDBA171D5A3B5D035BB5F11E856BABD9A4A96F72A5916550180048E402476F5AD2AF34D0F59B8F0DFC33F0AD86996F14FAB6';
    wwv_flow_image_api.g_varchar2_table(28) := 'A30016B1CCE5624F94C8F2C8473B141C9C73C81C56A781BC59AB6BDA8EA363A87F64DDADA0422FF46691AD8B1FF967B9FEF30183952460E3835A35AB4BA117D137D4EDE8A28A91851451400514514005733E18FF0091CB53FF00765FFD182BA6AE67C31F';
    wwv_flow_image_api.g_varchar2_table(29) := 'F2396A7FEECBFF00A3057998EFE350FF0011E860BF835BD0EDE8A28AF4CF3CE0BC15FF002FDFF6CFFF0066AEAA4FB86B95F057FCBF7FDB3FFD9ABAA939435E664DFEE50F9FE6CF4736FF007B97CBF2479A6A3A7DF5CEB77F3416AF2465D4060E8390A3D4';
    wwv_flow_image_api.g_varchar2_table(30) := '8AAFFD8DA91EB612FF00DFC8FF00F8AAEEF4BB3F3FED8D8CE2E08FFC756B43FB37FD9AAA99651A93736DDDFF005D874F33AD4E0A092B2F5FF33CD3FB0EFCF5B19BFEFE47FF00C5527F605E1EB6571FF7F23FFE2ABD33FB37FD9A3FB37FD9A9595515D5FE';
    wwv_flow_image_api.g_varchar2_table(31) := '1FE457F6BD6ECBF1FF0033CCFF00E11DB93D6CAE7FEFE47FFC551FF08D4C7AD9DD7FDFC8BFF8AAF489ECE3B681E697E58D0649C67F4155F36FFF003CAE7FF01A4FF0AB59651F3FEBE44BCD6BF97E3FE679F9F0BB91FF001E979FF7F22FFE2AA16F0B4DDA';
    wwv_flow_image_api.g_varchar2_table(32) := 'D2EFFEFE45FF00C557A1996D77F97B2E37E376DFB3BE71EBD290B41FF3CAE7FF00019FFC2ABFB36979FF005F217F6A57F2FC7FCCF367F0ADD76B3B9FFBF91FFF0015503F856FBB59CFFF007F63FF00E2ABD2D65B5917722DC32F2322DDFB71E94C796D50';
    wwv_flow_image_api.g_varchar2_table(33) := '02CB38C90A336EFC93D074A3FB36979FF5F21FF6AD7F2FC7FCCF307F0A6A5DACA5FF00BFB1FF00F15503F85357ED62FF008CB1FF00F155EA85A0FF009E771FF80EFF00E14B0C50DCB3AC61F7260B0742A467A751EC68FECEA5E63FED6ADD97E3FE679968';
    wwv_flow_image_api.g_varchar2_table(34) := 'DA2EA5A5EB96771756C6288BEDDC6453C907D09AF6AB639814FB5721AEDA7942C0F4CDDA8FFC75ABAFB5188147B574D1A31A51E589C788C44ABCF9E44C402304641AF35D223F1D783F4C1E1BD37C336BAA5B40EEB69A9B6A0B1A04762CA648C8DC4AEEE7';
    wwv_flow_image_api.g_varchar2_table(35) := '6E338E3D4FA5515A981E7A7E1BCD3780B59D2EF2F927D6B577FB55DDD90446670C1954639118202FAE09381C014BC3FA7F8BB4EB18B45D27C1DA678690B27DA7545BC49C3AA9F98AA60BB3104EDDE4E0704F7AF4FA285A3FEBA03D57F5D4F26F15E85E22';
    wwv_flow_image_api.g_varchar2_table(36) := 'F10497D653F807499AF267DB0EBF05EA446319FDDB90479B941804679DA7008C0AEABC63A16A7AAFC30BAD16202FB547B586324C813CD91590B365B03F849E6BAFA284B4B0EFAA6729E3ED16FF0059F015DE99A742B3DE3793B232E1436D9109E4F03804';
    wwv_flow_image_api.g_varchar2_table(37) := 'D55F1269DAF5878BEDBC53E1FB08B5373666C2EAC1EE160664DDBD5D1DB8E0F507B631D723B5A28EB7F3BFE161256563CDA6F0AF882FFC21E2DBBBD8234D775E452B650CA0AC4A8A1638F792016C672738E78AD8F11E817D77A1F86A2D3ED97CFD2F50B4';
    wwv_flow_image_api.g_varchar2_table(38) := '9CC5E600AB1A7CAE32783807F4E2BB1A285BDD797E1B07FC1FC482FAD52FB4FB9B3909097113C4C475018107F9D79C46BF10B4CF0F7FC2290F872C6F5228459C1ABFDB9638BCAC050CD11F9F217AE0F51C67BFA75149A4EEBB8D3B5BC8F27D5BC05A9EA3';
    wwv_flow_image_api.g_varchar2_table(39) := 'E0AF091B8D26DAFB50D122093E977171B16742002A244380C3629193B7939CF43D3786BFE1299EFAD85C68763E1AD12D2375FECF8668E7799CFDD20A00A88324F1CE7D41E3B2A2AAFAB7DC9B689760A28A290C28A28A0028A28A002B99F0C7FC8E5A9FFB';
    wwv_flow_image_api.g_varchar2_table(40) := 'B2FF00E8C15D35733E18FF0091CB53FF00765FFD182BCCC77F1A87F88F4305FC1ADE876F451457A679E705E0AFF97EFF00B67FFB35754FF74D72BE0AFF0097EFFB67FF00B35756DF74D799937FB943E7F9B3D1CDBFDEE5F2FC915FC3C3105EFF00D7D1FF';
    wwv_flow_image_api.g_varchar2_table(41) := '00D056B6AB2341FF005379FF005F27FF00415A5D527B98EE6D62B79FCA12072C42062718C75FAD7A895DD8F35BB1AD49583BEFFF00E822FF00F7E53FC2A6B017B770C8EFA8382B2BA0C449D01C7A53953715762524CB5AC7FC82A6FF0080FF00E842AE93';
    wwv_flow_image_api.g_varchar2_table(42) := '58DAADB5D2E9B316D4646036F0624FEF0F6AB4D6D779FF00909CBFF7E53FC295B4286B1FF89E2FFD7A9FFD0C55BDDC8AE7AFBED96FAAC7B6FDCB1B73F31893A6E1C74A67DAB50CFF00C7FB7FDF94FF000ACA55A29D8E88E1E528A95D6BEBFE469E96DFF1';
    wwv_flow_image_api.g_varchar2_table(43) := '2E4FF7E4FF00D18D4CD49BF776FF00F5F517FE842A96950DD49A646E3509172CE702243FC6DED49A85BDC88E0CEA1237FA4443FD5270770E7A56A9A7A984A2E2DC5F43599AA8467FE26D77FF005CA2FF00D9E836F77FF41193FEFCA7F8557B55923D4AEC';
    wwv_flow_image_api.g_varchar2_table(44) := '49334CDE5C5F31503FBDE9408A7E26F9A2D3FF00EBF17FF407AE86DFFD4AFD2B9FD7F95B0FFAFB5FFD01ABA183FD4AFD29012564F89F559B43F0B6A9AADBC492CD696CF322499DA4A8CF38ED5AD5CA7C4B91E2F86DAFB272C6D4AF5C704807F426A64EC9';
    wwv_flow_image_api.g_varchar2_table(45) := 'B438ABB48C5B6F1AF89B46B5B3D47C57A5D83E8B76236FED0D2D9F6DA071F2F9B1BFCD8E4658703DC902BD11595D432B0652320839045788DD78AF56D76DAD7C057DA7DBF85A3B9852D8DD5FCAD2F9F100011090810B1C6012D839C03922B5BC78CD71E2';
    wwv_flow_image_api.g_varchar2_table(46) := '5D33C20347D4F56D361D384E2C2D2428B7326ED89E7CB91B235DB9DDFDE23356FF005D095E7DB53D668AF39D0740D6BC37E11D674ED2EE2CAD35AB98DAEB4FD292E0CA966BD0006424B1273963F26F3E9589E19D2225F1A787D75C4D7AC7C4F6914F2993';
    wwv_flow_image_api.g_varchar2_table(47) := '51B917897B1ED60638E50DB576EE2DB42F192093D696971F4B9EC345781E97A3DFFC460DAA0D0AEDB54B9959BFB6EFAE648A0B140E762DB468C0CBB40383C00FD6BAFD734EFF008483C71E1BB3B6D72716AFA64E2E2EACE501EE115E30543AF4CB01923D';
    wwv_flow_image_api.g_varchar2_table(48) := '08EF459E89EEFF00CAE0ECAFE47A6D15E51A9F82AEBC25E11D56E74A6458F4DD51759D3EDD1DDB6468803A316E795DFEBDB9A356F12BEA9AD6A7E27D2DC4D63E1CD21A4B525BE47BA9D33923BED4C023D6969FD7A0ECEE7ABD15E29AEF832DB4EF08E97E';
    wwv_flow_image_api.g_varchar2_table(49) := '267BBBCBAF114F7168F3EAAD752798048CA084C1C00010A38E95D078D6D3C41378A3ED17763AB6A1E128ED0F996DA45E2C2CC4821C49182AF2E78E010003DF905FAF7B093BEDDAFF0089E9745729F0DACAC6C7C09A747A65EBDE58BF992C123C7B0AAB3B';
    wwv_flow_image_api.g_varchar2_table(50) := '36C2327952483CF506BABA6D59D849DF50A28A290C28A28A0028A28A002B99F0C7FC8E5A9FFBB2FF00E8C15D35733E18FF0091CB53FF00765FFD182BCCC77F1A87F88F4305FC1ADE876F451457A679E705E0AFF97EFF00B67FFB35756DF74D729E0AFF00';
    wwv_flow_image_api.g_varchar2_table(51) := '97EFFB67FF00B35756DF74D799937FB943E7F9B3D1CDBFDEE5F2FC911683FEAAF3FEBE4FFE82B516B534705F58BCAE1576CA327FE0352E83FEAAF3FEBE4FFE82B49AA9C6A365FEE4BFFB2D7AD4FE247992D8A3FDA567FF003F0BF91FF0A9B49D56C63B69';
    wwv_flow_image_api.g_varchar2_table(52) := '83DC004CF21FBA7A67E94F2E7D4D4FA331FB1CDCFF00CBC49FFA156D57E1221B95F55D5AC64D36655B852C76E06D3FDE1ED565B58D3F27FD297FEF96FF000A35873FD973F27F87FF00421569DCE4F27F3AE7D2C6A735A96A3692EA91324C1808181214FF';
    wwv_flow_image_api.g_varchar2_table(53) := '00787B541F6DB7CFFAC3FF007C37F856E339FEDA5E4FFC7A9FFD0C558DE72393584A8DDDEE74C310A31516B6F3FF008062695AA5947A5C48F70AAC0BE4153FDF3ED46A1AA593C706DB8538B8889E0F40C3DAADE98E7FB3D393F7E4FF00D0DA99A939F2ED';
    wwv_flow_image_api.g_varchar2_table(54) := 'F93FF1F317FE842B68A51B2309CB9A4E5DC69D5EC3FE7E57FEF93FE1505ADCC573A95DBC2E1D7CB886403D7E6AD02E7D4FE754A105F57BA1FF004CA2FF00D9A99253D74E4587FD7D0FFD01ABA383FD4AFD2B0BC43188E2D387F11BB071FF00007ABDA9EA';
    wwv_flow_image_api.g_varchar2_table(55) := '7FD8DA1CB7FF0061BDBEF282FF00A3D8C3E6CCF960BF2AE46719C9F606901A759FAEE8D6DE20D0EF349BC6916DEEA331BB4440603D41208CFE15CA7FC2CEFF00A91BC6BFF829FF00ECE8FF00859DFF0052378D7FF053FF00D9D269356609DB5474DAB787';
    wwv_flow_image_api.g_varchar2_table(56) := '34BD7743FEC8D4ED96E6D368003FDE52060303D9873C8F53591A8FC3ED3351D3F4B81EFB5486F34C8FCAB6D4EDEE765D05C6082E060E47B7AE3193543FE1677FD48DE35FFC14FF00F6747FC2CEFF00A91BC6BFF829FF00ECE9BD5DC169A1661F86BA1A69';
    wwv_flow_image_api.g_varchar2_table(57) := 'F770CF71A9DDDE5D6CDFA9DCDE33DD028731957E36ED3823031C0CE7156343F015868DABAEAB36A9ACEAB7B1214825D4EF0CC600DF7B670319EF9CF4ACEFF859DFF52378D7FF00053FFD9D1FF0B3BFEA46F1AFFE0A7FFB3A2F60DC96E7E18E932DEDCCB6';
    wwv_flow_image_api.g_varchar2_table(58) := '9AA6B7A7DADD4865B8B0B1BE315B4ACDF7F298FE21C1C11C70315B569E14D2F4FD474EBBB38DE01A7DA3D9DBC084796118A939C8C93951CE7B9CE6B03FE1677FD48DE35FFC14FF00F6747FC2CEFF00A91BC6BFF829FF00ECE85A6C0F5DCEE648D258DA39';
    wwv_flow_image_api.g_varchar2_table(59) := '115E3705595864303D41AC1D03C19A37877C393683690B49633990CCB3104C9BF82090076C0FA01589FF000B3BFEA46F1AFF00E0A7FF00B3A3FE1677FD48DE35FF00C14FFF006745B7F30B911F843A1CB68F6573AAEBF7362148B7B49AFC98AD5BF85A35';
    wwv_flow_image_api.g_varchar2_table(60) := 'C7054640DD9182720D5DD4BE1C596A17735C43AFF8874F6B803ED29637E6349DC00A5DD48237100038C0E3A557FF00859DFF0052378D7FF053FF00D9D1FF000B3BFEA46F1AFF00E0A7FF00B3A00EBB49D2ACB43D2ADF4CD3A1F26D2DD76C71EE270339EA';
    wwv_flow_image_api.g_varchar2_table(61) := '793C926AED709FF0B3BFEA46F1AFFE0A7FFB3A3FE1677FD48DE35FFC14FF00F674DBBEAC12B688EEE8AE13FE1677FD48DE35FF00C14FFF006747FC2CEFFA91BC6BFF00829FFECE901DDD15C27FC2CEFF00A91BC6BFF829FF00ECE8FF00859DFF0052378D';
    wwv_flow_image_api.g_varchar2_table(62) := '7FF053FF00D9D0077745709FF0B3BFEA46F1AFFE0A7FFB3A9EC7E227DBB50B6B4FF843BC5D6FE7CAB1F9D71A66C8E3DC40DCEDBB8519C93D85007695CCF863FE472D4FFDD97FF460AE9AB99F0C7FC8E5A9FF00BB2FFE8C15E663BF8D43FC47A182FE0D6F';
    wwv_flow_image_api.g_varchar2_table(63) := '43B7A28A2BD33CF382F057FCBF7FDB3FFD9ABAB6FBA6B94F057FCBF7FDB3FF00D9ABAB6FBA6BCCC9BFDCA1F3FCD9E8E6DFEF72F97E488B41FF005579FF005F27FF00415A875B1235ED888A4546DB2F2CBBBFBBDB22A5D08E21BBFF00AF93FF00A0AD43AD';
    wwv_flow_image_api.g_varchar2_table(64) := 'CD1C37B62F23AA2E25196381FC35EB53F891E64B62994BDFF9FA8BFEFC7FF65536931DF1B59765DC2A3ED127060CF39FF7AAB9BFB4FF009FA87FEFB153695A8D9C76B287BB81499E4383201C66B6ABF0930DC76AB1DF0D366DD790B2FCB902DF1FC43FDA';
    wwv_flow_image_api.g_varchar2_table(65) := 'AB2D1EA193FE9B07FE03FF00F6555755D46C9F4D9956EE0663B7004809FBC2AC3EA96193FE9B6FFF007F4561AD8D0A4D1DF7F6BA8FB643BBECC79F23B6E1DB754E63D4323FD361FF00C07FFECAAB36A365FDAEAFF6B836FD9C8CF98319DC2A73A9D8E7FE';
    wwv_flow_image_api.g_varchar2_table(66) := '3F6DFF00EFE0A1DC0A7A7C77A6C576DDC206F7E0C19FE36FF6A9F3DADECCA81AF62F91D5C62DFB8391FC54ED2DC369D1B2904167208EE37B55B00B9C0A4DEA05410EA0E702F21FFC07FF00ECAB434ED3A58A79669A6595E40ABF2C7B40033EE7D6ACDB5B';
    wwv_flow_image_api.g_varchar2_table(67) := '74E2B451020C0A2E0715E2A7CEB36110FBB13AE7EA431FE58AD3BBD674FD22183EDD71E579A0ECF919B38C67A03EA2B9DD4AE85EDF8B8072A750DAA7D82B01FCABB183FD4AFD29018DFF00099681FF003FFF00F9064FFE268FF84CB40FF9FF00FF00C832';
    wwv_flow_image_api.g_varchar2_table(68) := '7FF135BB4500617FC265A07FCFFF00FE4193FF0089A3FE132D03FE7FFF00F20C9FFC4D6ED140185FF099681FF3FF00FF009064FF00E268FF0084CB40FF009FFF00FC8327FF00135BB4500617FC265A07FCFF00FF00E4193FF89A3FE132D03FE7FF00FF00';
    wwv_flow_image_api.g_varchar2_table(69) := '20C9FF00C4D6ED140185FF00099681FF003FFF00F9064FFE268FF84CB40FF9FF00FF00C8327FF135BB4500617FC265A07FCFFF00FE4193FF0089A3FE132D03FE7FFF00F20C9FFC4D6ED140185FF099681FF3FF00FF009064FF00E268FF0084CB40FF009F';
    wwv_flow_image_api.g_varchar2_table(70) := 'FF00FC8327FF00135BB4500617FC265A07FCFF00FF00E4193FF89A3FE132D03FE7FF00FF0020C9FF00C4D6ED140185FF00099681FF003FFF00F9064FFE268FF84CB40FF9FF00FF00C8327FF135BB4500617FC265A07FCFFF00FE4193FF0089A3FE132D03';
    wwv_flow_image_api.g_varchar2_table(71) := 'FE7FFF00F20C9FFC4D6ED1401434DD674FD5FCDFB0DC79BE5637FC8CB8CE71D40F43591E18FF0091CB53FF00765FFD182BA6AE67C31FF2396A7FEECBFF00A3057998EFE350FF0011E860BF835BD0EDE8A28AF4CF3CF3BF0A5DC7657B716B71BA39652AAA';
    wwv_flow_image_api.g_varchar2_table(72) := '1C01F3293F29CF7E6BB26FBA6B9EF11784E7B9BC7BCD3F63349CBC24853BBA6476E7A9CFBF5CD575B5F192A2A056C28C0CB444FE64D78385AB5B049D09D39349E8E2AF74CF6B134A9631AAD09C537BA6EDA9BFA3488915D86755FF00483D4E3F856AFB4D';
    wwv_flow_image_api.g_varchar2_table(73) := '0B759233F5615C84565E2F843048570CDB8E7C93CE00EFF414FF00B3F8C7FE7927FDF30575FF0069FF00D399FF00E03FF04E6FECE5FF003F61FF00811D41920FEF45F98A8CBC1EB17E95CE791E32FF009E49FF007CC14791E32FF9E49FF7CC147F69BFF9';
    wwv_flow_image_api.g_varchar2_table(74) := 'F33FFC07FE087F672FF9FB0FFC08E80BC1EB17E9519687FE99FE9587E478CBFE7927FDF3051E478CBFE7927FDF3051FDA7FF004E67FF0080FF00C10FECE5FF003F61FF00811B25A1FF00A67FA5464C5FF4CFF4ACAF23C65FF3C93FEF9828F23C65FF003C';
    wwv_flow_image_api.g_varchar2_table(75) := '93FEF9828FED3FFA733FFC07FE08BFB3FF00E9EC3FF02350321380CA07D6AC4535A4446F9933E8393FA561F91E32FF009E49FF007CC14087C663A4683F0828FED3FF00A733FF00C07FE08FFB397FCFD87FE046FCBAC2C236DBDA5C4EDEBB768FCCFF0085';
    wwv_flow_image_api.g_varchar2_table(76) := '67CF3788AFB2912C76919FEE72DF99FE954B6F8DBD07FE40A5C78DFF00CF9347F69FFD399FFE03FF00043FB397FCFD87FE04417FA43697A669EAFCB9BD19FF00BE1EB6D34AB2957CC7872CDC93B9BAFE75877763E2FBE445B98B7AC6E1D4661186008CF1';
    wwv_flow_image_api.g_varchar2_table(77) := 'F534F16DE3250005E07BC347F69FFD399FFE03FF00045FD9CBFE7EC3FF000236FF00B1AC3FE787FE3EDFE347F63587FCF0FF00C7DBFC6B17C8F19FF77F5868F23C67FDDFD61A3FB4DFFCF99FFE03FF00043FB397FCFD87FE046D7F63587FCF0FFC7DBFC6';
    wwv_flow_image_api.g_varchar2_table(78) := '8FEC6B0FF9E1FF008FB7F8D62F91E33FEEFEB0D1E478CFFBBFAC347F69BFF9F33FFC07FE087F672FF9FB0FFC08DAFEC6B0FF009E1FF8FB7F8D1FD8D61FF3C3FF001F6FF1AC5F23C67FDDFD61A3C8F19FF77F5868FED37FF3E67FF80FFC10FECE5FF3F61F';
    wwv_flow_image_api.g_varchar2_table(79) := 'F811B5FD8D61FF003C3FF1F6FF001A3FB1AC3FE787FE3EDFE358BE478CFF00BBFAC34791E33FEEFEB0D1FDA6FF00E7CCFF00F01FF821FD9CBFE7EC3FF0236BFB1AC3FE787FE3EDFE347F63587FCF0FFC7DBFC6B17C8F19FF0077F5868F23C67FDDFD61A3';
    wwv_flow_image_api.g_varchar2_table(80) := 'FB4DFF00CF99FF00E03FF043FB397FCFD87FE046D7F63587FCF0FF00C7DBFC68FEC6B0FF009E1FF8FB7F8D62F91E33FEEFEB0D1E478CFF00BBFAC347F69BFF009F33FF00C07FE087F672FF009FB0FF00C08DAFEC6B0FF9E1FF008FB7F8D1FD8D61FF003C';
    wwv_flow_image_api.g_varchar2_table(81) := '3FF1F6FF001AC5F23C67FDDFD61A3C8F19FF0077F5868FED37FF003E67FF0080FF00C10FECE5FF003F61FF00811B5FD8D61FF3C3FF001F6FF1A3FB1AC3FE787FE3EDFE358BE478CFFBBFAC34791E33FEEFEB0D1FDA6FFE7CCFFF0001FF00821FD9CBFE7E';
    wwv_flow_image_api.g_varchar2_table(82) := 'C3FF000236BFB1AC3FE787FE3EDFE347F63587FCF0FF00C7DBFC6B17C8F19FF77F5868F23C67FDDFD61A3FB4DFFCF99FFE03FF00043FB397FCFD87FE046D7F63587FCF0FFC7DBFC68FEC6B0FF9E1FF008FB7F8D62F91E33FEEFEB0D1E478CFFBBFAC347F';
    wwv_flow_image_api.g_varchar2_table(83) := '69BFF9F33FFC07FE087F672FF9FB0FFC08DAFEC6B0FF009E1FF8FB7F8D63F867FE472D4FAF497AFF00D7414C6B5F193A329538230486881FCC739F7AD0F0A787EE74B9A4BBBC1B2674318881070320E491C678EDFF00EAE7955A98AC452E5A724A2EEDC9';
    wwv_flow_image_api.g_varchar2_table(84) := '58DE34A186A1539AA45B92B249DCEAB3451457B67901451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514';
    wwv_flow_image_api.g_varchar2_table(85) := '5007FFD9';
 
end;
/

 
declare
    l_name   varchar2(255);
    l_img_id number := null;
begin
    l_name   := 'logo.jpg';
    l_img_id := wwv_flow_image_api.new_image_repository_record(
       p_name=> l_name,
       p_varchar2_table=> wwv_flow_image_api.g_varchar2_table,
       p_mimetype=> 'image/pjpeg',
       p_flow_id=> 105,
       p_nlang=> '',
       p_notes=> 'Utilizado como logo en todas las páginas');
 
end;
/

commit;
begin 
execute immediate 'alter session set nls_numeric_characters='''||wwv_flow_api.g_nls_numeric_chars||'''';
end;
/
set verify on
set feedback on
prompt  ...done
