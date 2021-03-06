class GoProxy < Formula
    desc "A high performance HTTP(S), websocket, TCP, UDP,Secure DNS, Socks5 proxy server implemented by golang. Supports chain-style proxies,nat forwarding in different lan,TCP/UDP port forwarding, SSH forwarding."
    homepage "https://github.com/snail007/goproxy"
    version "6.5"

    url "https://github.com/snail007/goproxy/releases/download/v#{version}/proxy-linux-amd64.tar.gz"
    sha256 "9eb69bbf2f85bef1eebe9bb0988cc8dd88c04cf822fa5783cd0cb74cd157a3a6"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/proxy" => "goproxy")
    end

    def caveats; <<~EOS
        Executable linked as "goproxy".
        EOS
    end
end
