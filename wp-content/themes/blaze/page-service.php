<?php get_header() ?>

<main class="main">

    <div class="service-block">
        <div class="service-content">
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

            <div class="block-title">

                <div class="block-title__top flex flex--between flex--center">
                    <div class="title">
                        <img src="<?php echo get_template_directory_uri() ?>/img/cms-icon.png" alt="" class="title__img">
                        <img src="<?php echo get_template_directory_uri() ?>/img/service-text.png" alt="" class="title__bg">
                        <div class="title__text">Services</div>
                    </div>
                    <!-- /.contact__title -->
                    <div class="title__notice">
                        <p><?php the_field('title_notice'); ?></p>
                    </div>
                </div>
            </div>
            <!-- /.block-title -->
        </div>
        <!-- /.service-content -->
        <?php

        $args =array(
            'post_type' => 'blaze_services',
            'posts_per_page' => 6,
            'orderby' => 'title',
            'tax_query' => array(
            ));
        $query = new WP_Query( $args );

        ?>
        <?php  if ( $query->have_posts() ) : while ( $query->have_posts() ) : $query->the_post(); ?> ?>
        <div class="service-item flex flex--center flex--between">
            <div class="service-item__img">
                <?php the_post_thumbnail(); ?>
            </div>
            <div class="service-item__descr">
                <h3><?php the_title() ?></h3>
                <p>
                    <?php the_excerpt(); ?>
                </p>
            </div>
            <a href="#" class="service-item__link">
                Обсудить проект
            </a>
        </div>
        <?php endwhile; endif; ?>
        <!-- /.service-item -->
    </div>
    <!-- /.service-block -->

</main>

<?php get_footer() ?>
