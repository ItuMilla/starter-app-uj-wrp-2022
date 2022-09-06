document.addEventListener('alpine:init', () => {
    //

    // Alpine.store()

    Alpine.data('cars', function(){
        return {
            name : 'Cars',
            cars : [],
            makes : [{
                id: 1,
                name : "Ford"
            }],
            makeId : 0,
            makeSelected(){
                // alert(this.makeId)
            },
            init() {
                axios
                    .get('/api/makes')
                    .then((result) => {
                        const makes = result.data.makes;
                        this.makes = makes;
                    });

                    axios
                    .get('/api/makes')
                    .then((result) => {
                        const makes = result.data.cars;
                        this.makes = makes;
                    });

                    axios.get('/api/cars')
                    .then((result) => {
                        this.cars = result.data.cars;
                    })

            }
        }
    });

    Alpine.data('movies', function(){
        return {
            name : 'Movies'
        }
    });

    Alpine.data('taxis', () => ({
        name : 'Taxis'
    }));


})