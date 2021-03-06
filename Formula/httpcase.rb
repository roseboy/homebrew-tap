# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Httpcase < Formula
  desc "接口自动化测试工具"
  homepage "https://github.com/roseboy/httpcase"
  version "0.0.6"
  license "MulanPSL2"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/roseboy/httpcase/releases/download/v0.0.6/httpcase_0.0.6_darwin_x86_64.tar.gz"
      sha256 "0c72b3c7e1a07c6dacf4ba483811868df85542d1b34f194aa29367758ab38625"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/roseboy/httpcase/releases/download/v0.0.6/httpcase_0.0.6_linux_x86_64.tar.gz"
      sha256 "1fa58e84aaabac5bb78c803980fa6d7f5a340f5b6e236dce99e560d35fe4f90d"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/roseboy/httpcase/releases/download/v0.0.6/httpcase_0.0.6_linux_armv6.tar.gz"
      sha256 "54a2696ec230de09600c684ee9bb6477fef1176277ecee5a47963e3112e0bc7a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/roseboy/httpcase/releases/download/v0.0.6/httpcase_0.0.6_linux_arm64.tar.gz"
      sha256 "a087380686a159dacecad88ebd7896d59fe8e44920d7eeab43c3990fe2f27dfe"
    end
  end

  def install
    bin.install "hc"
  end

  test do
    system "#{bin}/hc version"
  end
end
