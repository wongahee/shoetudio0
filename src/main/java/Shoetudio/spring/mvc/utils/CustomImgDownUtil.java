package Shoetudio.spring.mvc.utils;

import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletResponse;
import java.io.*;

@Component("cidutil")
public class CustomImgDownUtil {

    private  String uploadPath = "";

    public void procDownload(String fname, String uuid, HttpServletResponse res) {
        int pos = fname.lastIndexOf(".");
        String fName = fname.substring(0, pos) + uuid + "." + fname.substring(pos + 1);

        InputStream is = null;
        OutputStream os = null;
        File f = null;

        try {
            boolean skip = false;
            try {
                f = new File(uploadPath, fName);    // 실제 파일명
                is = new FileInputStream(f);
            } catch (Exception ex){
                skip = true;
            }

            res.reset();
            res.setContentType("application/octet-stream");
            res.setHeader("Content-Description", "FileDownload");

            if(!skip) {     // 다운로드할 파일이 존재한다면
                fname = new String(fname.getBytes("UTF-8"),"iso-8859-1");
                res.setHeader("Content-Disposition", "attachment; filename=\"" + fname + "\"");
                res.setHeader("Content-type", "application/octet-stream; charset=utf-8");
                res.setHeader("Content-length", f.length() + "");

                os = res.getOutputStream();

                byte b[] = new byte[(int) f.length()];
                int cnt = 0;

                while ((cnt = is.read(b)) > 0)
                    os.write(b, 0, cnt);

            } else {    // 다운로드할 파일이 없다면
                res.setContentType("text/html; charset=utf-8");
                PrintWriter out = res.getWriter();
                out.print("<h1>저장할 파일이 없습니다.</h1>");
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if(os != null) {
                try { os.close(); } catch (IOException e) { }
            }
            if(is != null) {
                try {  is.close(); } catch (IOException e) { }
            }
        } // finally

    }

}
