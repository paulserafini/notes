(setq org-html-preamble t)
(setq org-html-preamble-format 
        '(("en"
           "<div class='top-bar'>
        <b class='pagetitle'>Analytics^2</b>
        <br class='rwd-break'>
        <b class='headerlinks'>
                <a class='headerlink' href='../R/index.html'>R</a>
                <a class='headerlink' href='../statistics/index.html'>Statistics</a>
                <a class='headerlink' href='../emacs/index.html'>Emacs</a>
                <a class='headerlink' href='../about/index.html'>About</a>
        </b>
</div>")))

(setq org-html-postamble t)
(setq org-html-postamble-format
          '(("en"
             "<div class='bottom-bar'>
        <div class='right-align'>
                <font class='bottom-text'>Created using</font>
                <a href='https://www.gnu.org/software/emacs/' class='bottom-link'>Emacs</a>
                <font class='bottom-text'>and </font>
                <a href='https://orgmode.org/' class='bottom-link'>Org Mode</a>
        </div>
</div>")))
