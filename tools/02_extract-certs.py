import glob
import re


for rfilename in glob.glob("data/file-*"):
    print(f"Processing {rfilename} ...")
    id = rfilename.replace("data/file-", "")
    with open(rfilename) as f:
        s = f.read()
        n = 1
        for match in re.finditer("-----BEGIN.*?-----END .*?-----", s, re.DOTALL):
            doc = s[match.start():match.end()]

            doc = doc.replace("\\n", "\n")
            doc = doc.replace("    \n", "")
            doc = doc.replace("    ", "")
            doc = doc.replace("  ", "")

            wfilename = "material/doc-%03d-%02d.pem" % (int(id), n)            
            
            with open(wfilename, "w") as w:
                w.write(doc)
                w.close()
            print(f"  {wfilename} written ...")
            n = n + 1
        if n == 1:
            print("  No PEM artifact found.")
