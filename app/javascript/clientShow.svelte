<script type='module'>
    export let client
    export let identification
    export let gender
    export let country
    export let department
    export let city
    export let avatar_url
</script>
<div class='body-form'>
    <div class='mdc-card mdc-card--outlined my-card'>
        <div class='mdc-card__primary-action my-card-content'>
            <div class='mdc-card__media mdc-card__media--square'>
            <div class='mdc-card__media-content'>
                {client.name}
                <br />
                <img src='{avatar_url}' class='avatar2' alt='avatar of client'/>
                <br />
                <label>Identification: </label>
                    {client.identification}
                <br />
                <label>Birthdate: </label>
                    {client.birthdate}
                <br />
                <label>Identification type: </label>
                    {identification.name}
                <br />
                <label>Gender: </label>
                    {gender.name}
                <br />
                <label>Country: </label>
                    {country.name}
                <br />
                <label>Department: </label>
                    {department.name}
                <br />
                <label>City: </label>
                    {city.name}
            </div>
            </div>
        </div>
        <div class='mdc-card__actions'>
            <div class='mdc-card__action-buttons'>
                <a href='/clients/{client.id}/edit' class='mdc-icon-button material-icons'>edit</a>
                <a href="/clients/{client.id}" data-method="delete" data-confirm="sure?" class='mdc-icon-button material-icons'>delete</a>
            </div>
            <div class='mdc-card__action-icons'>
            <a href='/clients' class='material-icons mdc-icon-button mdc-card__action mdc-card__action--icon' title='Go home'>home</a>
            </div>
        </div>
    </div>
</div> 