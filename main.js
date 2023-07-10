document.getElementById("point__main__ic-tooltip").addEventListener("mouseover", () => {
    let point = document.getElementById("point__main__ic-tooltip").closest(".point");
    point.classList.add("show-tooltip");
});

document.getElementById("point__main__ic-tooltip").addEventListener("mouseleave", () => {
    let point = document.getElementById("point__main__ic-tooltip").closest(".point");
    point.classList.remove("show-tooltip");
});

document.getElementById("campaign-option").addEventListener("click", () => {
    let campaign_option = document.getElementById("campaign-option");
    let show_btn_camp = document.getElementById("show_btn_camp");
    campaign_option.classList.toggle("active");

    if (campaign_option.classList.contains("active")) {
        show_btn_camp.textContent = "MUA NGAY QUA OCB"
    } else {
        show_btn_camp.textContent = "MUA NGAY"
    }
});

var elements = document.querySelectorAll(".box__item");
for (var i = 0; i < elements.length; i++) {
    let element = elements[i];
    element.addEventListener("click", function() {
        elements.forEach((item) => {
            item.classList.remove('active');
         });
        this.classList.add("active")
    });
  }
