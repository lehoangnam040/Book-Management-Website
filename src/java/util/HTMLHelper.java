/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

/**
 *
 * @author Nam
 */
public class HTMLHelper {

    public static String hyperlink(String text, String url) {
        return "<a href='" + url + "' >" + text + "</a>";
    }

    public static String pager(int currentPage, int totalPage, int gap) {
        String html = "";

        if (currentPage > 1) {
            html += hyperlink("First", "?page=1");
            html += "&nbsp;";
            html += hyperlink("Pref", "?page=" + (currentPage - 1));
            html += "&nbsp;";
        }

        for (int i = gap; i >= 1; i--) {
            if (currentPage - i < 1) {
                break;
            }
            html += hyperlink("" + (currentPage - i), "?page=" + (currentPage - i));
            html += "&nbsp;";
        }

        html += currentPage + "";

        for (int i = 1; i <= gap; i++) {
            if (currentPage + i > totalPage) {
                break;
            }
            html += hyperlink("" + (currentPage + i), "?page=" + (currentPage + i));
            html += "&nbsp;";
        }

        if (currentPage < totalPage) {
            html += hyperlink("Next", "?page=" + (currentPage + 1));
            html += "&nbsp;";
            html += hyperlink("Last", "?page=" + totalPage);
            html += "&nbsp;";
        }

        return html;
    }
}
