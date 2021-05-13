/*==================== Toggle Menu FUNCTION ====================*/
const ToggleMenu = () => {
	$(".btn-toggle").on("click", (e) => {
		$("header").find(".btn-toggle").toggleClass("active");
		$("header").find(".navbar-start").slideToggle(1000);
		$("header").find(".navbar-start").toggleClass("active");
		$("#overlay").toggleClass("active");
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
	var mainBanner = $("#home-banner");
	var heightHeader = $("header").outerHeight();
	if (mainBanner.length == 0) {
		$("header").css("background", "#003");
		$("main").css("padding-top", heightHeader);
	}
};
const initSwiper = () => {
	let myswiper = new Swiper(".home-banner .swiper-container", {
		loop: false,
		speed: 5000,
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
			el: ".home-banner .swiper-pagination",
			dynamicBullets: true,
			clickable: true,
			type: "bullets",
		},
		navigation: {
			nextEl: ".home-banner .swiper-button-next",
			prevEl: ".home-banner .swiper-button-prev",
		},
	});
	let productInfor = new Swiper(".wrap-slide .swiper-container", {
		loop: true,
		navigation: {
			nextEl: ".wrap-slide .swiper-button-next",
			prevEl: ".wrap-slide .swiper-button-prev",
		},
	});
	let specialOffer = new Swiper(".special-slide  .swiper-container", {
		loop: true,
		pagination: {
			el: ".special-slide .swiper-pagination",
			clickable: true,
		},
	});
};
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
};

function tabWrapper() {
	var theTabs = $(".nav-tabs li");
	var i;

	function theTabClicks(tabClickEvent) {
		var clickedTab = tabClickEvent.currentTarget;
		var tabParent =
			tabClickEvent.currentTarget.parentNode.parentNode.parentNode;
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
		theTabs[i].addEventListener("click", theTabClicks);
	}
}
const tabChild = () => {
	var set_tab = function (tab_container_id, tab_id) {
		$("#" + tab_container_id + " ul li").removeClass("active");
		$("#" + tab_container_id + ' a[rel="' + tab_id + '"]')
			.parent()
			.addClass("active");
		$("#" + tab_container_id + "_content .tab_content").hide();
		$("#" + tab_container_id + "_content #" + tab_id).fadeIn();
	};
	var get_hash = function () {
		if (window.location.hash) {
			var url = window.location.hash;
			if (url == "#_=_") return;
			var current_hash = url.substring(1);
			var current_hashes = current_hash.split(",");
			$.each(current_hashes, function (i, v) {
				set_tab(
					$('a[rel="' + v + '"]')
						.parents("div:first")
						.attr("id"),
					v
				);
			});
		}
	};
	get_hash();
	$(window).bind("hashchange", function () {
		get_hash();
	});
	$(".tabs_wrapper ul li").click(function () {
		var tab_id = $(this).children("a").attr("rel");
		window.location.hash = tab_id;
		return false;
	});

	$(".panel .swiper-container").each(function (index, element) {
		var $this = $(this);
		$this.addClass("instance-" + index);
		$this
			.parent()
			.find(".swiper-button-prev")
			.addClass("swiper-button-prev-" + index);
		$this
			.parent()
			.find(".swiper-button-next")
			.addClass("swiper-button-next-" + index);
		var swiper = new Swiper(".instance-" + index, {
			speed: 750,
			observer: true,
			observeParents: true,
			lazy: true,
			breakpointsInverse: true,
			spaceBetween: 30,
			loop: true,
			navigation: {
				nextEl: ".swiper-button-next-" + index,
				prevEl: ".swiper-button-prev-" + index,
			},
		});
	});
};

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
};
const scrollSection = () => {
	$(".navbar-start li a").on("click", function (event) {
		$(this).parent("li").addClass("active");
		event.preventDefault();
		var $section = $($(this).attr("href"));
		$("html, body").animate({
			scrollTop: $section.offset().top - $("header").outerHeight(),
		});
		$(".navbar-start li a").not(this).parent("li").removeClass("active");
	});
};
/*==================== LOAD FUNCTION ====================*/
$(document).ready(function () {
	AOS.init({
		mobile: false,
		duration: 1200,
	});
	AOS.refresh();
	ToggleMenu();
	initSwiper();
	setBackgroundElement();
	tabWrapper();
	scrollTop();
	scrollSection();
	tabChild();
	new ClipboardJS(".btn-clipboard");
	$("body").on("change", "#file-upload", function () {
		var i = $(this).prev("label").clone();
		let filesName = "";
		if (
			$("#file-upload").length > 0 &&
			$("#file-upload")[0].files.length > 0
		)
			$($("#file-upload")[0].files).each(function () {
				filesName += "<p>" + this.name + ";" + "</p>";
			});
		$(this).prev("label").html(filesName);
	});
	// $("#file-upload").change(function () {
	// 	var i = $(this).prev("label").clone();
	// 	var file = $("#file-upload")[0].files[0].name;
	// 	$(this).prev("label").text(file);
	// });
});
