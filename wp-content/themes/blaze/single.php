<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package blaze
 */

get_header();
?>
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

                <div class="block-title block-title--full">

                    <div class="block-title__top">
                        <div class="title">
                            <div class="title__text"><?php single_post_title() ?></div>
                        </div>
                        <!-- /.contact__title -->
                        <div class="title__notice">
                            <p>
                                <?php the_excerpt() ?>
                            </p>
                        </div>
                    </div>
                </div>
                <!-- /.block-title -->
                <div class="projects">

                    <div class="projects-btns flex flex--center flex--between">
                        <?php
                        while ( have_posts() ) :
                            the_post();

                            the_post_navigation(
                                array(
                                    'screen_reader_text' => ' ',
                                    'nav_links' => 'style="display: flex;"',
                                    'prev_text' => '<span class="switcher-btn"><span class="switcher-btn__ico switcher-btn__ico--prev"></span><span class="switcher-btn__text">' . esc_html__( 'Previous project', 'blaze' ) . '</span> </span>',
                                    'next_text' => '<span class="switcher-btn"><span class="switcher-btn__text">' . esc_html__( 'Next project', 'blaze' ) . '</span><span class="switcher-btn__ico switcher-btn__ico--next"></span></span> ',
                                )

                            );

                        endwhile; // End of the loop.
                        ?>
                    </div>
                    <!-- /.projects-btns -->
                    <?php if (get_field('project-image') ):?>
                        <div class="project-img">
                            <img src="<?php the_field('project-image'); ?>">
                        </div>
                    <?php endif;?>
                    <?php if (get_field('project-image2') ):?>
                        <div class="project-img">
                            <img src="<?php the_field('project-image2'); ?>">
                        </div>
                    <?php endif;?>
                    <?php if (get_field('project-image3') ):?>
                        <div class="project-img">
                            <img src="<?php the_field('project-image3'); ?>">
                        </div>
                    <?php endif;?>
                    <?php echo the_posts_pagination() ?>

                </div>
                <!-- /.projects -->
            </div>
            <!-- /.service-content -->

        </div>
        <!-- /.service-block -->
        <a href="#" class="to-top"></a>
    </main>

<?php
get_footer();
