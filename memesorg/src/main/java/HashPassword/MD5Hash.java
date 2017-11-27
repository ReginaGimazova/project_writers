package HashPassword;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Hash {
    static String salt ="Random";

    public static String md5(String password) throws NoSuchAlgorithmException {
        MessageDigest md = MessageDigest.getInstance("MD5");
        String hashPassword = password + salt;
        md.update(hashPassword.getBytes());

        byte bytePassword[] = md.digest();

        StringBuffer sb = new StringBuffer();
        for (int i = 0; i <bytePassword.length; i ++ ){
            sb.append(Integer.toString((bytePassword[i] & 0xff) + 0x100, 16).substring(1));
        }
        return sb.toString();
    }
}
