<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package blaze
 */

?>

<footer class="footer flex flex--center flex--between">
    <div class="footer__copyright">
        Copyright © 2019 by BlazeWebArt. All Rights Reserved
    </div>
        <?php wp_nav_menu( [
            'theme_location'  => '',
            'menu'            => '',
            'container'       => 'false',
            'container_class' => '',
            'container_id'    => '',
            'menu_class'      => 'footer__menu flex flex--wrap',
            'menu_id'         => '1',
            'echo'            => true,
            'fallback_cb'     => 'wp_page_menu',
            'before'          => '',
            'after'           => '',
            'link_before'     => '',
            'link_after'      => '',
            'items_wrap'      => '<ul id="%1$s" class="%2$s">%3$s</ul>',
            'depth'           => 0,
            'walker'          => '',
        ] ); ?>
</footer>
</div><!-- end wrapper -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
<?php wp_footer(); ?>

</body>
</html>
