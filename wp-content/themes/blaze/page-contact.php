<?php
get_header();?>

<main class="main">
    <div class="contact-block">
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

        <div class="contact__body">
            <div class="contact__top flex flex--between flex--center">
                <div class="contact__title">
                    <img src="<?php echo get_template_directory_uri() ?>/img/section-contact-icon.png" alt="" class="contact__title__img">
                    <img src="<?php echo get_template_directory_uri() ?>/img/contact-text.png" alt="" class="contact__title__bg">
                    <div class="contact__title__text">Контакты</div>
                </div>
                <!-- /.contact__title -->
                <div class="contact__notice">
                    <p>Также Вы можете оставить свои контактные данные заполнив форму ниже и мы обязательно с Вами свяжемся.</p>
                </div>
            </div>

            <div class="contact flex flex--between flex--center">
                <div class="contact__type">
                    <?php if(get_field('isq')): ?>
                        <div class="contact__item">
                                    <span class="ico">
                                        <img src="img/contact-ico/icq.png" alt="">
                                    </span>
                            <span class="contact__name">
                                        <b>ICQ:</b> <?php the_field('isq'); ?>
                                    </span>
                        </div>
                    <?php endif; ?>
                    <?php if(get_field('skype')): ?>
                        <div class="contact__item">
                                    <span class="ico">
                                        <img src="img/contact-ico/skype.png" alt="">
                                    </span>
                            <span class="contact__name">
                                        <b>Skype</b> <a href="skype:<?php the_field('skype'); ?>"><?php the_field('skype'); ?></a>
                                    </span>
                        </div>
                    <?php endif; ?>
                    <?php if(get_field('mail')): ?>
                        <div class="contact__item">
                                    <span class="ico">
                                        <img src="img/contact-ico/mail.png" alt="">
                                    </span>
                            <span class="contact__name">
                                        <b>E-Mail:</b> <a href="<?php the_field('mail'); ?>"><?php the_field('mail'); ?></a>
                                    </span>
                        </div>
                    <?php endif; ?>

                    <?php if(get_field('mail')): ?>
                        <div class="contact__item">
                                    <span class="ico">
                                        <img src="img/contact-ico/telegram.png" alt="">
                                    </span>
                            <span class="contact__name">
                                        <b>Telegram:</b> <a href="telegram:irokezeg"><?php the_field('telegram'); ?></a>
                                    </span>
                        </div>
                    <?php endif; ?>

                </div>
                <div class="contact__form">
                    <?php echo do_shortcode('[contact-form-7 id="23" title="Contact form 1"]');  ?>
                </div>
            </div>
            <!-- /.contact -->

        </div>
        <!-- /.contact__body -->
    </div>
    <!-- /.contact-block -->
</main>


<?php get_footer(); ?>
