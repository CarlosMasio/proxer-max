# Proxer-Max

Proxer-Max is a tool that changes your IP address every 30 seconds using Windscribe VPN, providing enhanced privacy and security. It's ideal for maintaining anonymity, bypassing geo-restrictions, and avoiding detection while browsing.

## Installation

To install Proxer-Max, follow these steps:

1. Clone the repository:

   ```bash
   git clone https://github.com/CarlosMasio/proxer-max.git

2. Navigate into the project directory:

   ```bash
   cd proxer-max
   ```

3. Install the required package:

   ```bash
   sudo dpkg --install windscribe-cli.deb
   ```

## Setup

1. Log into Windscribe using the following credentials:

   ```bash
   windscribe login
   ```

   * Username: `proxer_max`
   * Password: `POXer@0000`

2. Grant execution permissions to the script:

   ```bash
   chmod +x proxermax.sh
   ```

3. (Optional but recommended) Create a global command alias:

   ```bash
   sudo ln -sf $(realpath proxermax.sh) /usr/local/bin/proxermax
   ```

   Now you can run it from anywhere using:

   ```bash
   sudo proxermax
   ```

## Usage

To run Proxer-Max:

```bash
sudo ./proxermax.sh
```

Or, if you created the global alias:

```bash
sudo proxermax
```

