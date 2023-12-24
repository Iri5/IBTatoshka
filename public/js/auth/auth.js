function serializeForm(formNode) {
    let dataToServer = {};
    dataToServer.login = formNode.auth_login.value;
    dataToServer.pass = formNode.auth_pass.value;
    dataToServer = JSON.stringify(dataToServer);
    return dataToServer;
}
async function sendData(data) {
    let {login, pass} = JSON.parse(data);
    return await fetch(`/auth?login=${login}&pass=${pass}`, {
        method: 'GET',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
    })
}
function onError() {
    ModalWorkWithoutBtn("my-modal-auth");
}
async function handleFormSubmit(event) {
    event.preventDefault();
    const data = serializeForm(event.target);
    const { redirected, url, status, error } = await sendData(data);
    if (status === 403) {
        onError();
    } else if (status === 200) {
        if (redirected) {
            window.location.href = url;
        }
    }
}
const form = document.querySelector(".auth__form");
form.addEventListener("submit", handleFormSubmit);