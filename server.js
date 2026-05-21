const express = require('express');
const reservationRoutes = require('./routes/reservationRoutes');

require('./scheduler/cleanupScheduler');

const app = express();

app.use(express.json());

app.use('/api', reservationRoutes);

const PORT = 3000;

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});
