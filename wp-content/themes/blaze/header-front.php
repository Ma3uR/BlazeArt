<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package blaze
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="profile" href="https://gmpg.org/xfn/11">

    <?php wp_head(); ?>
</head>

<body>
<div class="wrapper">
    <header class="header ">
        <div class="header__top flex flex--between flex--center">

            <div class="header__left flex flex--center">
                <div class="header__item">
                    <a href="<?php echo get_home_url(); ?>" class="logo">
                        <img src="<?php echo get_template_directory_uri() ?> /img/logo.png" alt="1">
                    </a>
                </div>
            </div>

            <div class="header__right flex flex--center">
                <div class="header__item">
                    <a href="tel:+79889700890" class="phone">+ 7 (988) 970 08 90</a>
                </div>
                <div class="header__item">
                    <a href="#" class="contact-btn">Связаться</a>
                </div>
                <div class="header__item">
                    <a href="#" class="burger">
                        <span></span>
                        <span></span>
                        <span></span>
                    </a>
                </div>
            </div>
        </div>
        <div class="menu">
            <a href="#" class="close"></a>
            <?php wp_nav_menu( [
                'theme_location'  => '',
                'menu'            => '',
                'container'       => 'false',
                'container_class' => '',
                'container_id'    => '',
                'menu_class'      => 'menu__list flex',
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

        </div>
        <!-- /.menu -->
    </header>

