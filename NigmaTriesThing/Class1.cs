using System;
using System.Security.Cryptography;

public class Class1
{
    public static String sha256_hash(string value)
    {
        StringBuilder Sb = new StringBuilder();

        using (var hash = SHA256.Create())
        {
            Encoding enc = Encoding.UTF8;
            Byte[] result = hash.ComputeHash(enc.GetBytes(value));

            foreach (Byte b in result)
                Sb.Append(b.ToString("x2"));
        }

        return Sb.ToString();
    }

    public Class1()
	{
		SHA256 mySHA256 = SHA256.Create();
		string hash = GetHashCode(mySHA256, "cum");
		Console.WriteLine(hash);
	}
}
//594810adcbee20bd1d6f8e4cee51efdf1a235691e9d08fe96ce944d7fde34fd6
//897216173203238321892911114276238812392232635861452332081432331082336821525322779214
