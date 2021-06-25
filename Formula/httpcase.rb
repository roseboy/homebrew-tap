# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Httpcase < Formula
  desc "接口自动化测试工具"
  homepage "https://github.com/roseboy/httpcase"
  version "0.0.2"
  license "MulanPSL2"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/roseboy/httpcase/releases/download/v0.0.2/httpcase_0.0.2_darwin_x86_64.tar.gz"
      sha256 "2c62b191a1e45c6944ea3051e46d714cbe14a4d12b3cd430e31ee36d22de5dc0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/roseboy/httpcase/releases/download/v0.0.2/httpcase_0.0.2_linux_x86_64.tar.gz"
      sha256 "5400d54c740053a395e4f83f166fa480d4a1122fef80d538f08846c6b958afc4"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/roseboy/httpcase/releases/download/v0.0.2/httpcase_0.0.2_linux_armv6.tar.gz"
      sha256 "d464f81aa74cc0ae8944cef702de62fa90d2d903991678a1282e7b64effa1273"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/roseboy/httpcase/releases/download/v0.0.2/httpcase_0.0.2_linux_arm64.tar.gz"
      sha256 "068886bb5f4c06229d3df11343a99910399683fa2f9634472684beb30b4b126e"
    end
  end

  def install
    bin.install "hc"
  end

  test do
    system "#{bin}/hc version"
  end
end
