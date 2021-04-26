/*==================== Toggle Menu FUNCTION ====================*/
const ToggleMenu = () => {
	$('.btn-toggle').on('click', (e) => {
		$('header').find('.btn-toggle').toggleClass('active');
		$('header').find('.navbar-start').slideToggle(1000);
		$('header').find('.navbar-start').toggleClass('active')
		$('#overlay').toggleClass('active');
	});
	window.addEventListener("scroll", function () {
		if (window.pageYOffset > 0) {
			document.querySelector("header").classList.add("header-croll-down");
		} else {
			document
				.querySelector("header")
				.classList.remove("header-croll-down");
		}
	});
}
const initSwiper = () => {
	let myswiper = new Swiper(".home-banner .swiper-container", {
		loop: false,
		speed: 2500,
		effect: "fade",
		grabCursor: true,
		autoplay: {
			delay: 5000,
			disableOnInteraction: false,
		},
		fadeEffect: {
			crossFade: true,
		},
		pagination: {
			el: '.home-banner .swiper-pagination',
			dynamicBullets: true,
			clickable: true,
			type: 'bullets',

		},
	});
	let productInfor = new Swiper('.wrap-slide .swiper-container', {
		loop: true,
		navigation: {
			nextEl: '.wrap-slide .swiper-button-next',
			prevEl: '.wrap-slide .swiper-button-prev',
		},
	});
	let specialOffer = new Swiper('.special-slide  .swiper-container', {
		loop: true,
		navigation: {
			nextEl: '.special-slide  .swiper-button-next',
			prevEl: '.special-slide  .swiper-button-prev',
		},
	});

	$(".tab-panel").each(function (index, element) {
		var $this = $(this);
		$this.find('.gallery-top').addClass("instance-gallery-top-" + index);
		$this.find('.gallery-thumbs').addClass("instance-gallery-thumbs-" + index);
		$this.find(".swiper-button-prev").addClass("swiper-button-prev-" + index);
		$this
			.find(".swiper-button-next")
			.addClass("swiper-button-next-" + index);
		var galleryThumbs = new Swiper(".instance-gallery-thumbs-" + index, {
			spaceBetween: 24,
			slidesPerView: 6,
			loop: false,
			freeMode: true,
			loopedSlides: 7,
			watchSlidesVisibility: true,
			watchSlidesProgress: true,
			observer: true,
			observeParents: true,
			// breakpoints: {
			// 	991: {
			// 		slidesPerView: 4,
			// 		spaceBetween: 20,
			// 	},
			// 	767: {
			// 		slidesPerView: 4,
			// 		spaceBetween: 20,
			// 	},
			// 	375: {
			// 		slidesPerView: 4,
			// 		spaceBetween: 20,
			// 	},
			// },
		});
		var galleryTop = new Swiper(".instance-gallery-top-" + index, {
			observer: true,
			observeParents: true,
			spaceBetween: 10,
			loop: true,
			loopedSlides: 7,
			navigation: {
				nextEl: '.swiper-button-next-' + index,
				prevEl: ".swiper-button-prev-" + index,
			},
			thumbs: {
				swiper: galleryThumbs,
			},
		});
	});
}
const setBackgroundElement = () => {
	$("[setBackground]").each(function () {
		var background = $(this).attr("setBackground");
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-size": "cover",
			"background-position": "center center",
		});
	});
	$("[setBackgroundRepeat]").each(function () {
		var background = $(this).attr("setBackgroundRepeat");
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-repeat": "repeat",
		});
	});
}

function tabWrapper() {
	var theTabs = $(".nav-tabs li");
	var i;

	function theTabClicks(tabClickEvent) {
		var clickedTab = tabClickEvent.currentTarget;
		var tabParent = tabClickEvent.currentTarget.parentNode.parentNode.parentNode;
		var theTabs = tabParent.querySelectorAll(".nav-tabs li");
		for (var i = 0; i < theTabs.length; i++) {
			theTabs[i].classList.remove("active");
		}

		clickedTab.classList.add("active");
		tabClickEvent.preventDefault();
		var contentPanes = tabParent.querySelectorAll(".tab-panel");
		for (i = 0; i < contentPanes.length; i++) {
			contentPanes[i].classList.remove("active");
		}
		var anchorReference = tabClickEvent.target;
		var activePaneId = anchorReference.getAttribute("href");
		var activePane = tabParent.querySelector(activePaneId);
		activePane.classList.add("active");
	}
	for (i = 0; i < theTabs.length; i++) {
		theTabs[i].addEventListener("click", theTabClicks)
	}
}

const scrollTop = () => {
	$(window).scroll(function () {
		if ($(this).scrollTop() > 50) {
			$("#scroll-top").slideDown().show(500);
		} else {
			$("#scroll-top").slideUp().hide(500);
		}
	});

	$("#scroll-top").on("click", function (e) {
		e.preventDefault();
		$("html,body").animate({
			scrollTop: 0,
		});
	});
}
const scrollSection = () => {
	$('.navbar-start li a').on('click', function (event) {
		$(this).parent('li').addClass('active');
		event.preventDefault();
		var $section = $($(this).attr('href'));
		$('html, body').animate({
			scrollTop: $section.offset().top - $("header").outerHeight()
		});
		$('.navbar-start li a').not(this).parent('li').removeClass('active')
	});
}
/*==================== LOAD FUNCTION ====================*/
$(document).ready(function () {
	ToggleMenu();
	initSwiper();
	setBackgroundElement();
	tabWrapper();
	scrollTop();
	scrollSection();
});
