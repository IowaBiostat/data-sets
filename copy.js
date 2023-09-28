const copyToClipboard = async () => {
  try {
    let clip_code = document.getElementById("clip-code").textContent;
    await navigator.clipboard.writeText(clip_code);
    var x = document.getElementById("popup");
    x.className = "show";
    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 2000);
  } catch (error) {
    console.error("Failed to copy to clipboard:", error);
  }
};
