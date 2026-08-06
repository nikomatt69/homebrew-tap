# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-06T01:57:51.790Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.243.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.243.0/nikcli-ai-darwin-x64.zip"
      sha256 "63420acadca1c2af3ca45cead6716fa337b72f9d804fd6363155f79e7866bddf"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.243.0/nikcli-ai-darwin-arm64.zip"
      sha256 "83cbc723351aff3559b73c5ca2afea471f549f905dd1616aca8469516f447709"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.243.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "2efdf39c4967a15bdeaba486aee7746e689860e3f6bc92ff342b7269c1c657a7"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.243.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "c26e0868f10166c6366b881c460926f78a1d329ffa370dbb1b19b87b876f2b16"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

