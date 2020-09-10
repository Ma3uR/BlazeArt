<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package blaze
 */

get_header('front');?>

<main class="main" style="padding: 0">
    <div class="main-block">

        <div class="grid">
            <div class="grid-col-8">
                <span class="line"></span>
                <span class="line"></span>
            </div>
            <div class="grid-col-8">
                <span class="line"></span>
            </div>
            <div class="grid-col-8">
                <span class="line"></span>
            </div>
            <div class="grid-col-8">
                <span class="line"></span>
                <span class="line"></span>
            </div>
            <div class="grid-col-8">
                <span class="line"></span>
            </div>
            <div class="grid-col-8">
                <span class="line"></span>
            </div>
            <div class="grid-col-8">
                <span class="line"></span>
                <span class="line"></span>
            </div>
            <div class="grid-col-8">
                <span class="line"></span>
            </div>
        </div>
        <div class="main-block__content">
          <img src="<?php echo get_template_directory_uri() ?>/img/earth/space.jpg" alt="" class="space">
          <img src="<?php echo get_template_directory_uri() ?>/img/earth/light_shadow.png" alt="" class="light">

            <div class="main-block__body">
                <div class="main-block__main">
                    <div class="main-title">
                        blazewebart
                    </div>
                    <div class="main-subtitle">
                        Разработка и поддержка web проектов
                    </div>
                    <div class="case">
                        <span>Кейсы</span>
                    </div>
                    <a href="#portfolio"class="mouse-block">
                        <img src="<?php echo get_template_directory_uri() ?>/img/mouse.png" alt="">
                        <span class="arrow-down"></span>
                    </a>
                </div>
            </div>
            <!-- /.header__body -->
        </div>
    </div>
    <!-- /.main-block -->

    <div class="portfolio-block" id="portfolio">
        <div class="grid">
            <div class="grid-col-8"></div>
            <div class="grid-col-8"></div>
            <div class="grid-col-8"></div>
            <div class="grid-col-8"></div>
            <div class="grid-col-8"></div>
            <div class="grid-col-8"></div>
            <div class="grid-col-8"></div>
            <div class="grid-col-8"></div>
        </div>

        <div class="portfolio__top flex flex--center">
            <div class="portfolio__title">
                <img src="<?php echo get_template_directory_uri() ?>/img/section-portfolio-icon.png" alt="" class="portfolio__title__img">
                <img src="<?php echo get_template_directory_uri() ?>/img/portfolio-text.png" alt="" class="portfolio__title__bg">
                <div class="portfolio__title__text">portfolio</div>
            </div>
            <ul class="portfolio__menu flex">
                <li data-filter="all" >ALL</li>
                <?php

                if( $terms = get_terms( 'blaze_kinds', 'orderby=ID' ) ) :
                    foreach ($terms as $term) : ?>

                    <li data-filter="<?php echo $term->term_taxonomy_id; ?>"><?php echo $term->name; ?></li>

                <?php endforeach;
                endif;
                ?>
            </ul>
        </div>


        <div class="portfolio flex flex--wrap" id="">


            <?php

                $args =array(
                        'post_type' => 'post',
                        'posts_per_page' => 6,
                        'orderby' => 'title',
                        'tax_query' => array(
                ));
                $query = new WP_Query( $args );

                ?>

                <?php
                //added before to ensure it gets opened
                echo '<div class="portfolio-col filter-container">';
                if ( $query->have_posts() ) : while ( $query->have_posts() ) : $query->the_post(); ?>
                    <?php $terms = wp_get_post_terms( get_the_ID(), 'blaze_kinds' ) ?>
                        <?php $catIds = array();
                              foreach ($terms as $term):
                              $catIds[] = $term->term_taxonomy_id;
                              endforeach;
                              $ids = implode(", ", $catIds)
                        ?>


                     <a href="<?=the_permalink();?>" class="portfolio__item filtr-item" data-category="<?php echo $ids;?>">
							<span class="portfolio__img">
								<?php echo get_the_post_thumbnail(); ?>
							</span>
                        <span class="portfolio__name"><?php the_title(); ?></span>
                    </a>

                    <?php

                endwhile; endif;
                //make sure open div is closed
                echo '</div>';
                 ?>
            <a href="<?php echo get_home_url(); ?>/all-projects/" class="switcher-btn all-projects">View all projects</a>
        </div>
        <!-- /.portfolio -->
    </div>
    <!-- /.portfolio-block -->

</main>

<?php get_footer(); ?>
